plugin_LTLIBRARIES = libgstsndio.la

libgstsndio_la_SOURCES = \
	gstsndio.c \
	sndiosink.c \
	sndiosrc.c

libgstsndio_la_CFLAGS = \
	$(GST_PLUGINS_BASE_CFLAGS) \
        $(GST_BASE_CFLAGS) \
	$(GST_CFLAGS)
	$(SNDIO_CFLAGS)
libgstsndio_la_LIBADD = \
	$(top_builddir)/gst-libs/gst/audio/libgstaudio-$(GST_API_VERSION).la \
	$(GST_BASE_LIBS) \
	$(SNDIO_LIBS)

libgstsndio_la_LDFLAGS = $(GST_PLUGIN_LDFLAGS)
libgstsndio_la_LIBTOOLFLAGS = --tag=disable-static

noinst_HEADERS = \
	gstsndio.h \
	sndiosink.h \
	sndiosrc.h
