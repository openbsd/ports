# $OpenBSD: Makefile,v 1.35 2017/07/31 07:51:57 ajacoutot Exp $

COMMENT=		GLib library wrapping libgit2

V=			0.26.0
DISTNAME=		libgit2-glib-$V

SHARED_LIBS +=	git2-glib-1.0        4.0      # 0.0

SUBDIR=			sources/libgit2-glib/${V:C/^([0-9]+\.[0-9]+).*/\1/}/
MASTER_SITES=		${MASTER_SITE_GNOME:=${SUBDIR}}
EXTRACT_SUFX=		.tar.xz

MODULES=		lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

MODPY_VERSION=          ${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
LIB_DEPENDS=		devel/libgit2/libgit2>=0.26.0

USE_GMAKE=		Yes

WANTLIB += crypto curl ffi gio-2.0 git2 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 iconv intl nghttp2 pcre pthread
WANTLIB += ssh2 ssl z

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
