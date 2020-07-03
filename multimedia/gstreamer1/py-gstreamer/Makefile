# $OpenBSD: Makefile,v 1.16 2020/07/03 21:12:58 sthen Exp $

COMMENT=		overrides for the gobject-introspection-based pygst bindings

DISTNAME=		gst-python-${V}
PKGNAME=		py-gstreamer1-${V}
REVISION=		0

HOMEPAGE=		http://gstreamer.freedesktop.org/modules/gst-python.html

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gstreamer-1.0

MASTER_SITES=		${MASTER_SITE_GST:=gst-python/}

# XXX we need the meson MODULE to come first, but Makefile.inc is parsed after
MODULES=		devel/meson lang/python
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=		${P}/core>=${V} \
			${MODPY_LIB_DEPENDS}

CONFIGURE_ARGS=		-Dlibpython-dir=${LOCALBASE}/lib

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
