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
#include <err.h>

int
main(int argc, char **argv)
{
	unsigned int b;

	printf("Setting BIOS bit to disable MiniPCI ID permission check\n");
	if (i386_iopl(3) == -1)
		err(1, "iopl");
	outb(0x70, 0x6a);
	b = inb(0x71);

	printf("Before: *0x6a = %02x\n", b);
	b |= 0x80;
	outb(0x71, b);
	printf("After:  *0x6a = %02x\n", b);

	return (0);
}

