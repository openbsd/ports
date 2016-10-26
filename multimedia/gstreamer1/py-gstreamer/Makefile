# $OpenBSD: Makefile,v 1.6 2016/10/26 12:35:08 ajacoutot Exp $

COMMENT=		overrides for the gobject-introspection-based pygst bindings

DISTNAME=		gst-python-${V}
PKGNAME=		py-gstreamer1-${V}
REVISION=		0

HOMEPAGE=		http://gstreamer.freedesktop.org/modules/gst-python.html

WANTLIB += ffi glib-2.0 gmodule-2.0 gobject-2.0 gstreamer-1.0
WANTLIB += iconv intl m pcre pthread ${MODPY_WANTLIB} util

MASTER_SITES=		${MASTER_SITE_GST:=gst-python/}

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
