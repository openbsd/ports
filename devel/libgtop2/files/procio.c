#include <config.h>
#include <glibtop.h>
#include <glibtop/procio.h>
#include <glibtop/error.h>
#include <glibtop_suid.h>

static const unsigned long _glibtop_sysdeps_proc_io =
  (1UL << GLIBTOP_PROC_IO_DISK_RBYTES) + (1UL << GLIBTOP_PROC_IO_DISK_WBYTES);

/* Init function. */

void
_glibtop_init_proc_io_p (glibtop *server)
{
	server->sysdeps.proc_io = _glibtop_sysdeps_proc_io;
}

void
glibtop_get_proc_io_p (glibtop *server, glibtop_proc_io *buf,
			 pid_t pid)
{
	/* Not quite implemented yet. */
	return;
}
