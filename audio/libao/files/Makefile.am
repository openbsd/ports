## Process this file with automake to produce Makefile.in

AUTOMAKE_OPTIONS = foreign

if HAVE_SNDIO_AUDIO

sndioltlibs = libsndio.la
sndiosources = ao_sndio.c

else

sndioltlibs =
sndiosources =

endif

INCLUDES = -I$(top_builddir)/include/ao -I$(top_srcdir)/include

libdir = $(plugindir)
lib_LTLIBRARIES = $(sndioltlibs)

libsndio_la_LDFLAGS = @PLUGIN_LDFLAGS@
libsndio_la_LIBADD = -lsndio
libsndio_la_SOURCES = $(sndiosources)

EXTRA_DIST = ao_sndio.c
