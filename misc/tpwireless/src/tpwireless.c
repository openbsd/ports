/*
 * OpenBSD program to set the magic bit in IBM Thinkpad BIOS that 
 * allows the use of any MiniPCI wireless card. Must be run as root. 
 * Tested on an X40, but may work on other Thinkpads with similar 
 * restrictions. OTOH Don't complain if it trashes your CMOS. 
 * This is a simple transliteration of the no-1802.com program found at 
 * http://www.srcf.ucam.org/~mjg59/thinkpad/hacks.html
 */

/*
 * Copyright (c) 2004 Damien Miller <djm@mindrot.org>
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

#include <sys/types.h>
#include <machine/sysarch.h>
#include <machine/pio.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <err.h>

static void
usage(void)
{
	fprintf(stderr, 
"Usage: tpwireless [-cde]\n"
"  -c    Check BIOS bit to determine MiniPCI ID permission check state\n"
"  -d    Set BIOS bit to disable MiniPCI ID permission check\n"
"  -e    Clear BIOS bit to enable MiniPCI ID permission check\n");
}

int
main(int argc, char **argv)
{
	unsigned int before, towrite, after, ch;
	enum { TPW_NONE, TPW_SET, TPW_CLEAR, TPW_CHECK } action = TPW_NONE;

	while ((ch = getopt(argc, argv, "cde")) != -1) {
		switch(ch) {
		case 'c':
			action = TPW_CHECK;
			break;
		case 'd':
			action = TPW_SET;
			break;
		case 'e':
			action = TPW_CLEAR;
			break;
		default:
			usage();
			exit(1);
		}
	}

	if (action == TPW_NONE) {
		usage();
		exit(1);
	}

	if (i386_iopl(3) == -1)
		errx(1, "iopl failed: set machdep.allowaperture=1 or run single-user");
	outb(0x70, 0x6a);
	before = inb(0x71);

	switch(action) {
	case TPW_SET:	
		printf("Setting BIOS bit to disable MiniPCI ID "
		    "permission check\n");
		towrite = before | 0x80;
		break;
	case TPW_CLEAR:
		printf("Clearing BIOS bit to enable MiniPCI ID "
		    "permission check\n");
		towrite = before & ~0x80;
		break;
	case TPW_CHECK:
		printf("MiniPCI checking is currently %s\n",
			(before & 0x80) == 0x80 ? "off" : "on");
		exit(0);
	default:
		errx(1, "Internal error");
	}

	printf("Before:    *0x6a = %02x\n", before);
	printf("Expecting: *0x6a = %02x\n", towrite);
	outb(0x71, towrite);
	outb(0x70, 0x6a);
	after = inb(0x71);
	printf("After:     *0x6a = %02x\n", after);

	if (after != towrite) {
		printf("Got unexpected value.\n");
		exit(1);
	}
	exit(0);
}

