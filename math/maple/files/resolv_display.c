/* $OpenBSD: resolv_display.c,v 1.1 1999/06/18 15:32:17 espie Exp $ */

#include <netdb.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

extern int h_errno;

int main(int argc, char *argv[])
	{
	struct hostent *ent;
	char *end;
	char *name;

	if (argc < 2)
		exit(EXIT_FAILURE);

	name = strdup(argv[1]);
	
	end = strchr(name, ':');
	if (end == name)
		{
		puts(end);
		exit(EXIT_SUCCESS);
		}
	if (end)
		*end = 0;
	
	ent = gethostbyname(name);
	if (!ent) 
		{
		herror("maple");
		exit(EXIT_FAILURE);
		}

	if (end)
		*end = ':';
	else 
		end = "";
	switch(ent->h_addrtype)
		{
	case AF_INET:
		if (ent->h_length == 4)
			{
			unsigned char *addr = ent->h_addr;

			printf("%u.%u.%u.%u%s\n", addr[0], addr[1], addr[2], addr[3], end);
			exit(EXIT_SUCCESS);
			}
	default:
		fprintf(stderr, "maple: unsupported address type %d\n", ent->h_addrtype);
		exit(EXIT_FAILURE);
		}
	}
