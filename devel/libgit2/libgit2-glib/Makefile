# $OpenBSD: Makefile,v 1.29 2016/09/07 06:42:15 jasper Exp $

COMMENT=		GLib library wrapping libgit2

V=			0.24.4
PROJECT=		libgit2-glib

SHARED_LIBS +=	git2-glib-1.0        3.0      # 0.0

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/${PROJECT}/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=		.tar.xz

MODULES=		lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

MODPY_VERSION=          ${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
LIB_DEPENDS=		devel/gobject-introspection \
			devel/libgit2/libgit2>=0.24.0

USE_GMAKE=		Yes
WANTLIB += crypto curl ffi gio-2.0 girepository-1.0 git2 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 iconv idn intl m nghttp2 pcre
WANTLIB += pthread ssh2 ssl z

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
