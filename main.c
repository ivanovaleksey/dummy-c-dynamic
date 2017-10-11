#include <stdio.h>
#include "point.h"
#include "puts.h"

int main(int argc, char **argv) {
  printf("4+3 is %d\n", 4+3);

  struct Point orig;
  orig.x = 10;
  orig.y = 14;

  struct Point *p = &orig;
  print_point(p);

  puts_my("Hello world\n");

  return 0;
}
