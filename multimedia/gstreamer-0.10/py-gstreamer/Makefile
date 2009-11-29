# $OpenBSD: Makefile,v 1.6 2009/11/29 09:18:42 ajacoutot Exp $

COMMENT =		Python bindings for GStreamer

V =			0.10.17
DISTNAME =		gst-python-$V
PKGNAME =		py-gstreamer-$V

HOMEPAGE =		http://gstreamer.freedesktop.org/modules/gst-python.html

MASTER_SITES =		${MASTER_SITE_GST:=gst-python/}

WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gstbase-0.10 \
			gstcontroller-0.10 gstdataprotocol-0.10 gstnet-0.10 \
			gstreamer-0.10 gthread-2.0 gstpbutils-0.10 \
			m pcre xml2 z util

MODULES =		devel/gettext \
			lang/python

BUILD_DEPENDS =		::x11/py-gtk2
RUN_DEPENDS =		::x11/py-gtk2 \
			:py-libxml-*:textproc/libxml,-python
LIB_DEPENDS =		gstinterfaces-0.10,gstaudio-0.10,gsttag-0.10,gstvideo-0.10::$P/plugins-base \
			${MODPY_LIB_DEPENDS}

REGRESS_DEPENDS =	::$P/plugins-good

# don't heritate from Makefile.inc
# needed for the "regress" target
SEPARATE_BUILD =	No

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-gcov

post-install:
	@cd ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/ && \
		${MODPY_BIN} -OOOO -c 'import pygst' && \
		${MODPY_BIN} -c 'import pygst'

.include <bsd.port.mk>
