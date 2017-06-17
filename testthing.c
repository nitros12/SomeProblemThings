#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define NAME_SIZE 30

typedef struct {
  int empID;
  int department;
  float salary;
  char first_name[NAME_SIZE], last_name[NAME_SIZE];
} data; // I rearranged these to optimise alignment

/*
  Function: print_struct
  Arguments
      struct data *employees <- array of data structs
      int department <- department id to filter by, if this is -1, print all
                        employees
      int num_employees <- Number of employees
*/
void print_employees(data *const employees, int department, int num_employees) {
  data *imp;
  for (int i = 0; i < num_employees; i++) {
    imp = &employees[i]; // copy pointer here for cleaner code

    if (imp->department != department && department != -1)
      continue; // if not matching department and not the print all (-1) skip

    printf("Employee ID: %d\n", imp->empID);
    printf("Fist Name: %s\n", imp->first_name);
    printf("Last Name: %s\n", imp->last_name);
    printf("Department: %d\n", imp->department);
    printf("Salary: %f\n", imp->salary);
  }
}

/*
  Function: read_employee_data
  Arguments
    FILE *inf <- file handle to read from
    data **employees <- array of employees, to be filled with read employees,
                        must be NULL
  Returns: int <- number of employees read

  expects files in the format:
    empID : int
    first_name : string
    last_name : string
    department : int
    salary : float
*/
int read_employee_data(FILE *inf, data **employees) {
  int read = 0;
  data *tmp; // temporary pointer to data for cleaner code
  while (!feof(inf)) {
    read++; // grow by one employee each time
    *employees = realloc(*employees, sizeof(data) * read);
    if (*employees == NULL) {
      fprintf(stderr, "failed to allocate memory.\n");
      exit(1);
    }
    memset(&(*employees)[read - 1], 0, sizeof(data)); // zero out
    // again, save a temporary pointer for cleaner code
    tmp = &(*employees)[read - 1];

    fscanf(inf, "%d %s %s %d %f\n", &tmp->empID, tmp->first_name,
           tmp->last_name, &tmp->department, &tmp->salary);
  }
  return read;
}

int main(int argc, char **argv) {
  if (argc < 2) {
    printf("USE: %s <filename>\n", *argv);
    return 0;
  }

  FILE *inf = fopen(argv[1], "r");
  if (inf == NULL) {
    fprintf(stderr, "Could not open file\n");
    return 1;
  }

  data *employees = NULL;
  int num_employees = read_employee_data(inf, &employees);
  fclose(inf);

  printf("NUM: %d\n", num_employees);
  print_employees(employees, -1, num_employees);

  FILE *output = fopen("structureout.bin", "wb");
  fwrite(employees, sizeof(data), num_employees, output);
  fclose(output);

  free(employees);
  return 0;
}
