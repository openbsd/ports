# $OpenBSD: Makefile,v 1.4 2016/04/09 08:08:38 ajacoutot Exp $

V=			1.6.2

COMMENT=		overrides for the gobject-introspection-based pygst bindings

DISTNAME=		gst-python-${V}
PKGNAME=		py-gstreamer1-${V}

HOMEPAGE=		http://gstreamer.freedesktop.org/modules/gst-python.html

MASTER_SITES=		${MASTER_SITE_GST:=gst-python/}

WANTLIB += ffi glib-2.0 gmodule-2.0 gobject-2.0 gstreamer-1.0
WANTLIB += m pcre pthread ${MODPY_WANTLIB} util

MODULES=		lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=		${P}/core>=${V} \
			${MODPY_LIB_DEPENDS}

post-install:
	rm ${PREFIX}/lib/gstreamer-${API}/*.la
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gi/overrides/_gi_gst.{a,la}

.include <bsd.port.mk>
