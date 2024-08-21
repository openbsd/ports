COMMENT-main=		common API for various GNOME modules (GTK3)
COMMENT-gtk4=		common API for various GNOME modules (GTK4)
COMMENT-common=		common API for various GNOME modules (common files)

GNOME_PROJECT=		gnome-desktop
GNOME_VERSION=		44.1

PKGNAME-gtk4=		gnome-desktop4-${GNOME_VERSION}
PKGNAME-common=		gnome-desktop-common-${GNOME_VERSION}

SHARED_LIBS += gnome-desktop-4           0.0 # 2.1.1
SHARED_LIBS += gnome-bg-4                0.0 # 2.1.1
SHARED_LIBS += gnome-rr-4                0.0 # 2.1.1
SHARED_LIBS += gnome-desktop-3           2.3 # 20.0.0

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES=		-main -gtk4 -common

PKG_ARCH-common=	*

MODULES=		devel/meson \
			x11/gnome

WANTLIB += cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 intl m
WANTLIB += xkbregistry

WANTLIB-main += ${WANTLIB}
WANTLIB-main += gdk-3 gtk-3

WANTLIB-gtk4 += ${WANTLIB}
WANTLIB-gtk4 += gtk-4

WANTLIB-common=		# empty

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

RUN_DEPENDS=		${BASE_PKGPATH},-common \
			devel/gsettings-desktop-schemas \
			devel/iso-codes

RUN_DEPENDS-common=	# empty

LIB_DEPENDS-main=	x11/gtk+3 \
			x11/xkbcommon

LIB_DEPENDS-gtk4=	x11/gtk+4 \
			x11/xkbcommon

LIB_DEPENDS-common=	# empty

MODGNOME_TOOLS=		gobject-introspection yelp

CONFIGURE_ARGS=		-Ddebug_tools=false \
			-Dudev=disabled \
			-Dsystemd=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
