# $OpenBSD: Makefile,v 1.210 2022/01/12 14:52:56 ajacoutot Exp $

COMMENT=		GNOME file manager

GNOME_PROJECT=		nautilus
GNOME_VERSION=		41.2

SHARED_LIBS += nautilus-extension        3.0 # 1.5.0

CATEGORIES=		x11

# GPLv2 - LGPLv2 - GFPLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gexiv2 gio-2.0 glib-2.0 gmodule-2.0 gnome-autoar-0
WANTLIB += gnome-desktop-3 gobject-2.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gtk-3 handy-1 intl m pango-1.0 pangocairo-1.0 tracker-sparql-3.0

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

RUN_DEPENDS=		x11/gnome/gvfs \
			devel/gsettings-desktop-schemas

# needs tracker-miner-fs
RUN_DEPENDS +=		x11/gnome/tracker3-miners

LIB_DEPENDS=		graphics/libgexiv2 \
			multimedia/gstreamer1/plugins-base \
			x11/gnome/autoar \
			x11/gnome/desktop \
			x11/gnome/tracker3 \
			x11/libhandy

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=		-Dselinux=false \
			-Dlibportal=false

# XXX test/automated/displayless/meson.build:45:2:
# ERROR: List item must be one of <class 'str'>, not <class 'list'>
CONFIGURE_ARGS +=	-Dtests=none

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# needs 'org.gnome.nautilus.preferences'
TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
