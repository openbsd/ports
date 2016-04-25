/*
 * Copyright (c) 2016 Philip Guenther <guenther@openbsd.org>
 * Copyright (c) 2016 Stuart Henderson <sthen@openbsd.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */


#include <err.h>
#include <errno.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

static inline void
showreg(const char *reg, unsigned value, int show_ascii)
{
	unsigned char c;

	printf("%s = 0x%08x    % 10u", reg, value, value);

	if (show_ascii) {
		fputs("    \"", stdout);
		c =  value        & 0xff; putchar(isprint(c) ? c : '?');
		c = (value >>  8) & 0xff; putchar(isprint(c) ? c : '?');
		c = (value >> 16) & 0xff; putchar(isprint(c) ? c : '?');
		c = (value >> 24) & 0xff; putchar(isprint(c) ? c : '?');
		putchar('"');
	}
	putchar('\n');
}

int
main(int argc, char **argv)
{
	unsigned long	code, leaf;
	unsigned int	a, b, c, d;

	leaf = 0;
	switch (argc) {
	case 3:
		errno = 0;
		/* strtoul() to both dec and hex input */
		leaf = strtoul(argv[2], NULL, 0);
		if (leaf == ULONG_MAX && errno == ERANGE || leaf > UINT_MAX)
			errx(1, "cpuid leaf out of range: %s", argv[2]);
		/* FALLTHROUGH */
	case 2:
		errno = 0;
		code = strtoul(argv[1], NULL, 0);
		if (code == ULONG_MAX && errno == ERANGE || code > UINT_MAX)
			errx(1, "cpuid code out of range: %s", argv[1]);
		break;
	default:
		printf("usage: cpuid code [leaf]\n");
		exit(1);
	}

	/*
	 * The dance here with %ebx is to work around a gcc bug on i386,
	 * where gcc uses %ebx for PIC/PIE code but fail to save/reload
	 * it around __asm() blocks that use %ebx.  Oddly, if you declare
	 * that the __asm() *clobbers* ebx, gcc complains.
	 * Anyway, this dance is unnecessary but harmless on amd64.
	 */
	__asm volatile("mov %%ebx, %%esi; cpuid; xchg %%esi, %%ebx"
	    : "=a" (a), "=S" (b), "=c" (c), "=d" (d)
	    : "a" (code), "c" (leaf));

	showreg("eax", a, 1);
	showreg("ebx", b, 1);
	showreg("ecx", c, 1);
	showreg("edx", d, 1);
	//getc(stdin);
	return 0;
}
