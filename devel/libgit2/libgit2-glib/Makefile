# $OpenBSD: Makefile,v 1.50 2021/12/23 08:51:36 ajacoutot Exp $

COMMENT=		GLib library wrapping libgit2

V=			1.0.0.1
DISTNAME=		libgit2-glib-$V

SHARED_LIBS += git2-glib-1.0             5.2 # 0.0.0

SUBDIR=			sources/libgit2-glib/${V:R:R}/
MASTER_SITES=		${MASTER_SITE_GNOME:=${SUBDIR}}
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson \
			lang/python \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODGNOME_TOOLS=		gobject-introspection vala

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
LIB_DEPENDS=		devel/libgit2/libgit2>=1.1.0

USE_GMAKE=		Yes

WANTLIB += gio-2.0 git2 glib-2.0 gobject-2.0

.include <bsd.port.mk>
