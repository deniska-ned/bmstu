#include "altera_avalon_sysid_qsys.h"
#include "altera_avalon_sysid_qsys_regs.h"
#include "system.h"

#include "sys/alt_stdio.h"

int
main()
{
  alt_putstr(" Hello from System on Chip !\ r \n");
  alt_putstr("Send any character \ r \n");

  int x = IORD_ALTERA_AVALON_SYSID_QSYS_ID(SYSID_QSYS_0_BASE);

#define N 5
#define BASE 10
  char c[N];
  int i = N −1;
  c[i −−] = 0;

  for (; i >= 0; i −−) {
    c[i] = x % BASE + ’ 0 ’ ;
    x /= BASE;
  }

  alt_putstr(c);

  char ch;
  while (1) {
    ch = alt_getchar();
    alt_putchar(ch);
  }

  return 0;
}
