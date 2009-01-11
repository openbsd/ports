MAINTAINCLEANFILES = Makefile.in

AM_CFLAGS = $(JACK_CFLAGS)

plugindir = $(ADDON_DIR)

plugin_LTLIBRARIES = jack_sndio.la

jack_sndio_la_LDFLAGS = -module -avoid-version
jack_sndio_la_LIBADD = $(SNDIO_LIBS)
jack_sndio_la_SOURCES = sndio_driver.c sndio_driver.h

noinst_HEADERS = sndio_driver.h
