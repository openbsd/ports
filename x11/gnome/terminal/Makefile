COMMENT-main=		GNOME terminal
COMMENT-nautilus=	GNOME Terminal extension for Nautilus

DIST_TUPLE=		gnome GNOME gnome-terminal 3.52.0 .

PKGNAME-nautilus=	${GNOME_PROJECT}-nautilus-${GNOME_VERSION}

# GPLv3+
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES=		-main -nautilus

WANTLIB-main += X11 atk-1.0 c c++abi gdk-3 gio-2.0 glib-2.0 gobject-2.0
WANTLIB-main += gtk-3 handy-1 intl pango-1.0 uuid vte-2.91

WANTLIB-nautilus += c++abi gio-2.0 glib-2.0 gobject-2.0 intl nautilus-extension

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			textproc/docbook-xsl \
			x11/gnome/shell

LIB_DEPENDS-main=	devel/vte3 \
			sysutils/e2fsprogs \
			x11/libhandy

RUN_DEPENDS-main=	devel/gsettings-desktop-schemas

LIB_DEPENDS-nautilus=	x11/gnome/nautilus

RUN_DEPENDS-nautilus=	${BASE_PKGPATH},-main

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
