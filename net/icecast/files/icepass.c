/*	$OpenBSD: icepass.c,v 1.1 2000/08/29 03:40:36 fgsch Exp $	*/

/*
 * Create an encrypted password to use in icecast.conf, users.aut and
 * command line when running the icecast server.
 * The encription algorithm is blowfish, with 8 rounds by default.
 *
 * The number of rounds might be specified in command line.
 *
 * Tue Aug 29 00:06:28 ART 2000, -fgsch
 */

#include <pwd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

int
main(argc, argv)
	int argc;
	char **argv;
{
	char *p, salt[_PASSWORD_LEN];
	int rounds = 8;

	if (argc > 1) {
		char *ep;

		if (!strcmp(argv[1], "-h")) {
			fprintf(stderr, "usage: icepass [rounds]\n");
			exit (1);
		}

		rounds = strtol(argv[1], &ep, 10);
		if (argv[1] == '\0' || *ep != '\0' || rounds < 4)
			rounds = 4;
	}

	strncpy(salt, bcrypt_gensalt(rounds), _PASSWORD_LEN - 1);
	salt[_PASSWORD_LEN - 1] = 0;

	p = crypt(getpass("Password:"), salt);
	if (p)
		printf("Encrypted password: %s\n", p);
	else
		printf("Error encrypting password\n");

	return (0);
}

