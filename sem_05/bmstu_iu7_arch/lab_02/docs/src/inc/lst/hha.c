#define LEN 8
#define ENROLL 2

void
_start()
{
  int sum = 0;
  int i = LEN / ENROLL;
  int arr[] = { 1, 2, 3, 4, 5, 6, 7, 8 };

  do {
    int a = arr[0];
    sum += a;
    int b = arr[1];
    sum += b;
    arr += ENROLL;
    --i;
  } while (i != 0);
  sum += 1;
lp2:
  goto lp2;
}
