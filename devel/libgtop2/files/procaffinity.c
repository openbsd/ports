/*
 * $OpenBSD: procaffinity.c,v 1.1 2009/10/16 10:56:04 jasper Exp $
 * procaffinity stub.
 */

#include <config.h>
#include <glibtop/procaffinity.h>
#include <glibtop/error.h>


void
_glibtop_init_proc_affinity_s(glibtop *server)
{
  server->sysdeps.proc_affinity =
    (1 << GLIBTOP_PROC_AFFINITY_NUMBER) |
    (1 << GLIBTOP_PROC_AFFINITY_ALL);

}


guint16 *
glibtop_get_proc_affinity_s(glibtop *server, glibtop_proc_affinity *buf, pid_t pid)
{
  memset(buf, 0, sizeof *buf);

  return NULL;
}
