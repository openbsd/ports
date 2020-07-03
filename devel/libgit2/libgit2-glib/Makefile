# $OpenBSD: Makefile,v 1.44 2020/07/03 21:12:39 sthen Exp $

COMMENT=		GLib library wrapping libgit2

V=			0.28.0.1
DISTNAME=		libgit2-glib-$V
REVISION =		1

SHARED_LIBS +=	git2-glib-1.0        5.1      # 0.0

SUBDIR=			sources/libgit2-glib/${V:R:R}/
MASTER_SITES=		${MASTER_SITE_GNOME:=${SUBDIR}}
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson \
			lang/python \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODGNOME_TOOLS=		gobject-introspection vala

MODPY_VERSION=          ${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
LIB_DEPENDS=		devel/libgit2/libgit2>=0.28.0

USE_GMAKE=		Yes

WANTLIB += gio-2.0 git2 glib-2.0 gobject-2.0 intl

.include <bsd.port.mk>
