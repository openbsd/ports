COMMENT=		GLib library wrapping libgit2

V=			1.2.0
DISTNAME=		libgit2-glib-$V
REVISION=		0

SHARED_LIBS += git2-glib-1.0             5.4 # 0.200.0

SUBDIR=			sources/libgit2-glib/${V:R}/
SITES=			${SITE_GNOME:=${SUBDIR}}
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson \
			lang/python \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODGNOME_TOOLS=		gobject-introspection vala

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=		devel/libgit2/libgit2

# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

USE_GMAKE=		Yes

WANTLIB += gio-2.0 git2 glib-2.0 gobject-2.0

.include <bsd.port.mk>
