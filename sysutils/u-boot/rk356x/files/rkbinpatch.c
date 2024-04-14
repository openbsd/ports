/*
 * Copyright (c) 2023 Mark Kettenis <kettenis@openbsd.org>
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

#include <sys/mman.h>
#include <sys/stat.h>
#include <endian.h>
#include <err.h>
#include <fcntl.h>
#include <unistd.h>

int
main(int argc, char *argv[])
{
	struct stat st;
	void *start, *end;
	uint32_t *word;
	uint32_t data;
	int fd;

	fd = open(argv[1], O_RDWR);
	if (fd == -1)
		err(1, "%s", argv[1]);

	if (fstat(fd, &st) == -1)
		err(1, "%s: stat", argv[1]);

	start = mmap(NULL, st.st_size, PROT_READ | PROT_WRITE,
	    MAP_SHARED, fd, 0);
	if (start == MAP_FAILED)
		err(1, "%s: mmap", argv[1]);

	end = (char *)start + st.st_size;
	for (word = start; (void *)word < end; word++) {
		if (le32toh(*word) == 0x12345678 &&
		    (void *)(word + 10) < end) {
			data = le32toh(*(word + 9));
			if ((data & 0xffffff) == 1500000) {
				data &= 0xff000000;
				data |= 115200;
				*(word + 9) = htole32(data);
				close(fd);
				return 0;
			}
		}
	}

	warnx("%s: can't find parameters", argv[1]);

	close(fd);
	return 1;
}
