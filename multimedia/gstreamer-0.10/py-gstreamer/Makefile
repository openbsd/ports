# $OpenBSD: Makefile,v 1.26 2015/04/21 18:51:25 sthen Exp $

COMMENT=		Python bindings for GStreamer

V=			0.10.22
DISTNAME=		gst-python-${V}
PKGNAME=		py-gstreamer-${V}
REVISION=		5

HOMEPAGE=		http://gstreamer.freedesktop.org/modules/gst-python.html

MASTER_SITES =		${MASTER_SITE_GST:=gst-python/}


# check-lib-depends(1) list them as extra, but they are dlopened

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += ffi glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-0.10
WANTLIB += gstbase-0.10 gstcontroller-0.10 gstdataprotocol-0.10
WANTLIB += gstinterfaces-0.10 gstnet-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gsttag-0.10 gstvideo-0.10 gthread-2.0 lzma m orc-0.4 pcre
WANTLIB += pthread util xml2 z

MODULES=		lang/python

BUILD_DEPENDS=		x11/py-gtk2
RUN_DEPENDS=		x11/py-gtk2 \
			textproc/libxml,-python
LIB_DEPENDS=		${P}/plugins-base

TEST_DEPENDS=	${P}/plugins-good

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-shave

post-install:
	@cd ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/ && \
		${MODPY_BIN} -OOOO -c 'import pygst' && \
		${MODPY_BIN} -c 'import pygst'
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gst-${VERSION}/gst/*.{a,la}
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}
	rm ${PREFIX}/lib/gstreamer-${VERSION}/*.{a,la}

.include <bsd.port.mk>
