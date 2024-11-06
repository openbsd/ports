# see patches
ONLY_FOR_ARCHS=		amd64 i386

COMMENT=		future-based programming for GLib-based applications

GNOME_PROJECT=		libdex
GNOME_VERSION=		0.8.1
REVISION=		1

SHARED_LIBS += dex-1                     0.0 # 1.0.0

CATEGORIES=		devel

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += atomic epoll-shim gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_CPPFLAGS=	-I${LOCALBASE}/include/libepoll-shim
MODGNOME_LDFLAGS=	-L${LOCALBASE}/lib -lepoll-shim

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/epoll-shim \
			devel/glib2

# libatomic, without the gcc4 MODULE which adds the gcc compiler as BDEP
LIB_DEPENDS +=		lang/gcc/8,-libs>=8,<9

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
