# $OpenBSD: Makefile.am,v 1.2 2011/05/23 19:35:52 jasper Exp $

INCLUDES			= @INCLUDES@

noinst_LTLIBRARIES		= libgtop_sysdeps-2.0.la libgtop_sysdeps_suid-2.0.la

libgtop_sysdeps_2_0_la_SOURCES	= nosuid.c siglist.c sysinfo.c

libgtop_sysdeps_2_0_la_LDFLAGS	= $(LT_VERSION_INFO)

libgtop_sysdeps_suid_2_0_la_LIBADD	= $(KVM_LIBS)
libgtop_sysdeps_suid_2_0_la_SOURCES	= open.c close.c cpu.c mem.c swap.c \
				  uptime.c loadavg.c shm_limits.c msg_limits.c \
				  sem_limits.c proclist.c procstate.c procuid.c \
				  proctime.c procmem.c procsignal.c prockernel.c \
				  procsegment.c procargs.c procmap.c netlist.c \
				  netload.c ppp.c procopenfiles.c fsusage.c \
				  procwd.c procaffinity.c glibtop_private.c

libgtop_sysdeps_suid_2_0_la_LDFLAGS	= $(LT_VERSION_INFO)

libgtopinclude_HEADERS		= glibtop_server.h glibtop_machine.h \
				  glibtop_suid.h glibtop_private.h

libgtopincludedir		= $(includedir)/libgtop-2.0
