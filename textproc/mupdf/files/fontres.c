/*
 * Copyright (c) 2009 Roberto Fernandez
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

#include <stdio.h>
#include <string.h>

int
main(int argc, char **argv)
{
	FILE *fi, *fo;
	char name[256], *basename, *p;
	int i;
	long len;

	if (argc < 3)
	{
		fprintf(stderr, "usage: %s output.s input.dat [input2.dat ...]\n",
			argv[0]);
		return 1;
	}

	fo = fopen(argv[1], "wb");
	if (!fo)
	{
		fprintf(stderr, "%s: could not open output file \"%s\"\n",
			argv[0], argv[1]);
		return 1;
	}

	for (i = 2; i < argc; i++)
	{
		fi = fopen(argv[i], "rb");
		if (!fi)
		{
			fprintf(stderr, "%s: could not open input file \"%s\"\n",
				argv[0], argv[i]);
			return 1;
		}

		basename = strrchr(argv[i], '/');
#ifdef WIN32
		if (!basename)
			basename = strrchr(argv[i], '\\');
#endif
		if (basename)
			basename++;
		else
			basename = argv[i];
#ifdef WIN32
		strncpy(name, "_pdf_font_", 255);
		strncat(name, basename, 245);
#else
		strncpy(name, "pdf_font_", 255);
		strncat(name, basename, 246);
#endif
		p = name;
		while (*p)
		{
			if ((*p == '.') || (*p == '\\') || (*p == '-'))
				*p = '_';
			p ++;
		}

		fseek(fi, 0, SEEK_END);
		len = ftell(fi);

		fprintf(fo, ".globl  %s_buf\n", name);
		fprintf(fo, ".balign 8\n");
		fprintf(fo, "%s_buf:\n", name);
		fprintf(fo, ".incbin \"%s\"\n\n", argv[i]);

		fprintf(fo, ".globl  %s_len\n", name);
		fprintf(fo, ".balign 4\n");
		fprintf(fo, "%s_len:\n", name);
		fprintf(fo, ".long   %d\n\n\n", len);

		fclose(fi);
	}

	return 0;
}

