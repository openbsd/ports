if HAVE_SNDIO
sndioltlibs = libsndioout.la
sndiosources =	audio_sndio.c
else
sndioltlibs =
sndiosources =
endif

EXTRA_DIST = audio_sndio.c

libdir = $(plugindir)/$(OUTPUT_PLUGIN_DIR)
lib_LTLIBRARIES = $(sndioltlibs)

INCLUDES = @GTK_CFLAGS@ -I$(top_builddir)/intl -I$(top_srcdir)
libsndioout_la_LDFLAGS = @PLUGIN_LDFLAGS@
libsndioout_la_LIBADD = @GTK_LIBS@ @PTHREAD_LIBS@ @SNDIO_LIBS@
libsndioout_la_SOURCES= $(sndiosources)
