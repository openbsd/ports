# $OpenBSD: Makefile,v 1.5 2009/04/11 14:37:21 ajacoutot Exp $

COMMENT =		Python bindings for gstreamer

V =			0.10.11
DISTNAME =		gst-python-$V
PKGNAME =		py-gstreamer-$Vp2

HOMEPAGE =		http://gstreamer.freedesktop.org/modules/gst-python.html

MASTER_SITES =		${MASTER_SITE_GST:=gst-python/}

WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gstbase-0.10 \
			gstcontroller-0.10 gstdataprotocol-0.10 gstnet-0.10 \
			gstreamer-0.10 gthread-2.0 gstpbutils-0.10 \
			m pcre xml2 z

MODULES =		devel/gettext

BUILD_DEPENDS =		::x11/py-gtk2
RUN_DEPENDS =		::x11/py-gtk2 \
			:py-libxml-*:textproc/libxml,-python
LIB_DEPENDS =		gstinterfaces-0.10::$P/plugins-base

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
