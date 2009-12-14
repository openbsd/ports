INCLUDES = -I$(top_srcdir)/akode/lib -I$(top_builddir)/akode/lib $(all_includes)

lib_LTLIBRARIES	= libakode_sndio_sink.la

libakode_sndio_sink_la_SOURCES = sndio_sink.cpp
libakode_sndio_sink_la_LDFLAGS = -module -avoid-version -no-undefined
libakode_sndio_sink_la_LIBADD = ../../lib/libakode.la $(LIBSNDIO)
