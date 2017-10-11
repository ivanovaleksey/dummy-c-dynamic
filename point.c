#include <stdio.h>
#include "point.h"

void print_point(struct Point *p) {
  printf("x: %d, y: %d\n", p->x, p->y);
}
