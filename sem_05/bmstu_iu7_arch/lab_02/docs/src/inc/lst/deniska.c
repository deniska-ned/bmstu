#define LEN 9
#define ENROLL 1
#define ELEM_SZ 4

int _x[] = { 1, 2, 3, 4, 8, 6, 7, 5, 4 };

void
_start()
{
  int* x1 = _x;

  // address behind last element
  int* x20 = (byte*)x1 + ELEM_SZ * (LEN + 1);

  int x31 = *x1;
  ++x1;

  do {
    int x2 = *x1;

    if (!(x2 < x31))
      x31 = x2;

    ++x1;
  } while (x1 != x20);

lp2:
  goto lp2;
}
