/*	$OpenBSD: fmt.c,v 1.1.1.1 2003/01/06 18:03:44 lebel Exp $ */
/*	This file is based on /usr/src/bin/ps/fmt.c and /usr/src/bin/ps/print.c */
/*	OpenBSD: fmt.c,v 1.2 1996/06/23 14:20:49 deraadt Exp 	*/
/*	OpenBSD: print.c,v 1.27 2002/06/18 03:21:33 provos Exp	*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <vis.h>
#include <sys/param.h>
#include <sys/sysctl.h>
#include <kvm.h>

static char *cmdpart(char *);
void fmt_puts(char *, int *);
void fmt_putc(int, int *);

static char *
cmdpart(arg0)
	char *arg0;
{
	char *cp;

	return ((cp = strrchr(arg0, '/')) != NULL ? cp + 1 : arg0);
}

void
fmt_argv(kd, ki)
	kvm_t *kd;
	struct kinfo_proc *ki;
{
	int left = -1; // no termwidth!
	char **argv, **p;
	if (kd != NULL) {
		argv = kvm_getargv(kd, ki, 0);
		if ((p = argv) != NULL) {
			while (*p) {
				fmt_puts(*p, &left);
				p++;
				fmt_putc(' ', &left);
			}
		}
	}
	if (argv == NULL || argv[0] == '\0' ||
		strcmp(cmdpart(argv[0]), ki->kp_proc.p_comm)) {
		fmt_putc('(', &left);
		fmt_puts(ki->kp_proc.p_comm, &left);
		fmt_putc(')', &left);
	}
}

void
fmt_puts(s, leftp)
	char *s;
	int *leftp;
{
	static char *v = 0, *nv;
	static int maxlen = 0;
	int len;

	if (*leftp == 0)
		return;
	len = strlen(s) * 4 + 1;
	if (len > maxlen) {
		if (maxlen == 0)
			maxlen = getpagesize();
		while (len > maxlen)
			maxlen *= 2;
		nv = realloc(v, maxlen);
		if (nv == 0)
			return;
		v = nv;
	}
	strvis(v, s, VIS_TAB | VIS_NL | VIS_CSTYLE);
	if (*leftp != -1) {
		len = strlen(v);
		if (len > *leftp) {
			v[*leftp] = '\0';
			*leftp = 0;
		} else
			*leftp -= len;
	}
	printf("%s", v);
}

void
fmt_putc(c, leftp)
	int c;
	int *leftp;
{

	if (*leftp == 0)
		return;
	if (*leftp != -1)
		*leftp -= 1;
	putchar(c);
}
