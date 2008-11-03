plugin_LTLIBRARIES = libgstlibsndio.la

libgstlibsndio_la_SOURCES = gstlibsndio.c libsndiosink.c libsndiosrc.c 
libgstlibsndio_la_CFLAGS = $(GST_PLUGINS_BASE_CFLAGS) $(GST_CFLAGS)
libgstlibsndio_la_LIBADD = \
	$(GST_PLUGINS_BASE_LIBS) -lgstaudio-$(GST_MAJORMINOR) \
	$(LIBSNDIO_LIBS)
libgstlibsndio_la_LDFLAGS = $(GST_PLUGIN_LDFLAGS)

noinst_HEADERS = libsndiosink.h libsndiosrc.h
EXTRA_DIST =
