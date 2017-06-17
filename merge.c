#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#define size(x) (sizeof(x)/sizeof(*(x)))
void merge(int *, int);

void mergesort(int *source, int len, int n) {
  if (len <= 1) return;
	int merge[len];
	int *l = source;
	int *r = source + len/2;
	printf("l = %d, r = %d, len = %d, n = %d\n", *l, *r, len/2, n);
	mergesort(source, len/2, n+1);
	mergesort(r, len/2, n+1);
  int i=0;
	while (i < len) {
		while (*l <= *r) {
		  printf("merging left:  l = %4d, l = %4p, i = %4d\n", *l, l, i);
			merge[i] = *l;
			i++;
			l++;
		}
		while (*r <= *l) {
			printf("merging right: r = %4d, l = %4p, i = %4d\n", *r, r, i);
			merge[i] = *r;
			i++;
			r++;
		}
		puts("testing");
	}
	puts("wew");
	memcpy(source, merge, len);
	puts("lad");
}

int main() {
	int source[] = {45,3,66,3,6,8,213,9,231,75};
	mergesort(source, size(source), 0);
	for (int i = 0; i < size(source); i++)
		printf("%d ", source[i]);
	puts("");
}