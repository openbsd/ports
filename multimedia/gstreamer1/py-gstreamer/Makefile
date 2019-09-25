# $OpenBSD: Makefile,v 1.14 2019/09/25 22:48:02 ajacoutot Exp $

COMMENT=		overrides for the gobject-introspection-based pygst bindings

DISTNAME=		gst-python-${V}
PKGNAME=		py-gstreamer1-${V}

HOMEPAGE=		http://gstreamer.freedesktop.org/modules/gst-python.html

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gstreamer-1.0 intl
WANTLIB += pthread

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

.include <bsd.port.mk>
