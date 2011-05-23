/* $OpenBSD: glibtop_private.c,v 1.2 2011/05/23 19:35:53 jasper Exp $	*/

#include <config.h>
#include <glibtop.h>
#include <glibtop/error.h>

#include "glibtop_private.h"

#include <sys/types.h>
#include <unistd.h>
#include <string.h>
#include <glib.h>
#include <errno.h>

char *
execute_lsof(pid_t pid) {
	char *output = NULL;
	char *lsof;
	char *command;
	int   exit_status;

	lsof = g_find_program_in_path("lsof");
	if (lsof == NULL)
		return NULL;

	command = g_strdup_printf("%s -n -P -Fftn -p %d", lsof, pid);
	g_free(lsof);

	if (g_spawn_command_line_sync (command, &output, NULL, &exit_status, NULL)) {
		if (exit_status != 0) {
			g_warning("Could not execute \"%s\" (%i)\nMake sure lsof(8) is installed sgid kmem.",
				   command, exit_status);
			output = NULL;
		}
	}

	g_free(command);
	return output;
}

/* Ported from linux/glibtop_private.c */
gboolean
safe_readlink(const char *path, char *buf, int bufsiz)
{
	int ret;

	ret = readlink(path, buf, bufsiz - 1);

	if (ret == -1) {
		g_warning("Could not read link %s : %s", path, strerror(errno));
		return FALSE;
	}

	buf[ret] = '\0';
	return TRUE;
}
