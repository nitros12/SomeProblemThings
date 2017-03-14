#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>
#include <math.h>


#define FOV 10
#define PI 3.1415926
#define TWO_TIMES_PI PI*2

#define PI_DIV_10 PI/10.0

int width;
int height;

typedef struct depthPixel {
   char pix;
   double depth;
} depthPixel;

typedef struct vec3d {
  double x, y, z;
} vec3d;

typedef struct vec2d {
  double x, y;
} vec2d;

typedef struct tri {
  vec3d a, b, c;
} tri;

typedef struct tri2d {
  vec2d a, b, c;
} tri2d;

void addvec(vec3d *set, vec3d *source) {
  set->x += source->x;
  set->y += source->y;
  set->z += source->z;
}

void mulvec(vec3d *set, vec3d *source) {
  set->x *= source->x;
  set->y *= source->y;
  set->z *= source->z;
}

void rotXvec(vec3d *set, double theta) {
  set->y = set->y * cos(theta) - set->z * sin(theta);
  set->z = set->y * sin(theta) + set->z * cos(theta);
}

void rotYvec(vec3d *set, double theta) {
  set->x = set->x * cos(theta) + set->z * sin(theta);
  set->z = set->z * cos(theta) - set->z * sin(theta);
}

void rotZvec(vec3d *set, double theta) {
  set->x = set->x * cos(theta) - set->y * sin(theta);
  set->y = set->x * sin(theta) + set->y * cos(theta);
}

void rotateVec(vec3d *set, vec3d *rot) {
  rotXvec(set, rot->x);
  rotYvec(set, rot->y);
  rotZvec(set, rot->z);
}

void translateRotate(vec3d *set, vec3d *rot, vec3d *tran) {
  addvec(set, tran);
  rotateVec(set, rot);
}

void rotateTri(tri *set, vec3d *rot) {
  rotateVec(&set->a, rot);
  rotateVec(&set->b, rot);
  rotateVec(&set->c, rot);
}

double depthTri(tri *source, double x, double y) {
  double na = (source->b.x - source->a.x) * (source->c.z - source->a.z) - (source->c.x - source->a.x) * (source->b.z - source->a.z);
  double nb = (source->b.x - source->a.x) * (source->c.y - source->a.y) - (source->c.x - source->a.x) * (source->b.y - source->a.y);
  double nd = (source->b.y - source->a.y) * (source->c.z - source->a.z) - (source->c.y - source->a.y) * (source->b.z - source->a.z);
  if (nb == 0)
    return source->a.z;

  double ne = (na / nb) * (y - source->a.y);
  double nf = (nd / nb) * (x - source->a.x);
  return source->a.z + ne - nf;
}

double triSign(vec2d *a, vec2d *b, vec2d *c) { //calculate sign of a point and a line
  return (a->x - c->x) * (b->y - c->y) - (b->x - c->x) * (a->y - c->y);
}

bool trisignbool(vec2d *a, vec2d *b, vec2d *c) { // returns 0 if inside triangle,
  return triSign(a, b, c) < 0.0;
}

vec2d projectVec(vec3d *a) {
  vec2d flat;
  flat.x = ((a->x - (width>>1)) / (a->z * 10/FOV)) + (width>>1);
  flat.y = ((a->y - (height>>1)) / (a->z * 10/FOV)) + (height>>1);
  return flat;
}

void projectTri(tri *source, tri2d *setter) {
  setter->a = projectVec(&source->a);
  setter->b = projectVec(&source->b);
  setter->c = projectVec(&source->c);
}

bool vecInTri(tri2d *source, vec2d *chk) {
  bool b1, b2, b3;
  b1 = trisignbool(chk, &source->a, &source->b);
  b2 = trisignbool(chk, &source->b, &source->c);
  b3 = trisignbool(chk, &source->c, &source->a);
  return (b1 == b2) && (b2 == b3);
}

void drawScreen(depthPixel ***buffer, char *writeBuffer) {
  register int x;
  for (register int y = 0; y < height; ++y) {
    for (x = 0; x < width; ++x) {
      writeBuffer[(width+1)*y+x] = buffer[y][x]->pix;
    }
    writeBuffer[(width+1)*y+x] = '\n';
  }
  printf(writeBuffer);
}

int limit(int val, int min, int max) {
  if (val < min) return min;
  else if (val > max) return max;
  return val;
}

char getPix(double depth) {
  return "1234567890abcdefg"[limit(round(depth), 0, 16)];
}

void wipeBuffer(depthPixel ***pixels) {
  for (register int y=0; y < height; ++y) {
    for (register int x=0; x < width; ++x) {
      pixels[y][x]->pix = '-';
      pixels[y][x]->depth = 1000.0;
    }
  }
}

void rasterTri(tri *source, depthPixel ***buffer) {
  tri2d mapped;
  projectTri(source, &mapped);

  vec2d temp;
  for (register int y=0; y < height; ++y) {
    temp.y = (double) y;
    for (register int x=0; x < width; ++x) {
      temp.x = (double) x;
      if (vecInTri(&mapped, &temp)) {
        double depth = depthTri(source, x, y);
        if (buffer[y][x]->depth > depth) {
          buffer[y][x]->depth = depth;
          buffer[y][x]->pix = getPix(depth);
        }
      }
    }
  }
}


int render() {
  printf("reported width: %d, reported height: %d", width, height);
  setbuf(stdout, NULL);

  depthPixel ***pixels = (depthPixel ***) calloc(height, sizeof(depthPixel *));
  if (!pixels) return EXIT_FAILURE;

  for (int y=0; y < height; ++y) {
    pixels[y] = (depthPixel **) calloc(width, sizeof(depthPixel *));
    if (!pixels[y]) return EXIT_FAILURE;
    // we'll never bother to free this since it'll only fall out of use when the program ends and the OS deallocs it for us
    for (int x=0; x < width; ++x) {
      pixels[y][x] = (depthPixel *) malloc(sizeof(depthPixel));
      if (!pixels[y][x]) return EXIT_FAILURE;
    }
  }

  char *writeBuffer = (char *) calloc((width+1) * height, sizeof(char));

  tri testrender;
  testrender.a = (vec3d) {0.0, 0.0, 20.0};
  testrender.b = (vec3d) {10.0, 10.0, 1.0};
  testrender.c = (vec3d) {50.0, 50.0, 5.0};


  vec3d rotation;

  for (register int i=0; i<1000; i++) {
    tri copyTri = testrender;
    rotateTri(&copyTri, &rotation);
    rotation.z += PI_DIV_10;
    wipeBuffer(pixels); // always wipe first
    rasterTri(&copyTri, pixels);
    drawScreen(pixels, writeBuffer);
  }

  return EXIT_SUCCESS;
}


#ifdef _WIN32
  #include <windows.h>
  #include <wchar.h>

  int main() {
      HANDLE console;
      CONSOLE_SCREEN_BUFFER_INFO info;
      console = CreateFileW(L"CONOUT$", GENERIC_READ | GENERIC_WRITE,
      FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, NULL);

      if (console == INVALID_HANDLE_VALUE) return EXIT_FAILURE;
      if (GetConsoleScreenBufferInfo(console, &info) == 0) return EXIT_FAILURE;

      CloseHandle(console);

      width = info.srWindow.Right - info.srWindow.Left;
      height = info.srWindow.Bottom - info.srWindow.Top;

      return render();
  }
#elif linux
  #include <sys/ioctl.h>	/* ioctl, TIOCGWINSZ */
  #include <err.h>	/* err */
  #include <fcntl.h>	/* open */
  #include <unistd.h>	/* close */
  int main() {
  	struct winsize ws;
  	int fd;

  	/* Open the controlling terminal. */
  	fd = open("/dev/tty", O_RDWR);
  	if (fd < 0)
  		err(1, "/dev/tty");

  	/* Get window size of terminal. */
  	if (ioctl(fd, TIOCGWINSZ, &ws) < 0)
  		err(1, "/dev/tty");

    close(fd);
    width = ws.ws_row;
    height = ws.ws_col;
    return render();
  }
#endif
