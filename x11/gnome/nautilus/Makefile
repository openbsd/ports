# $OpenBSD: Makefile,v 1.187 2019/02/21 17:08:50 ajacoutot Exp $

COMMENT=		GNOME file manager

GNOME_PROJECT=		nautilus
GNOME_VERSION=		3.30.5
REVISION=		0

SHARED_LIBS += nautilus-extension        3.0 # 1.4.0

CATEGORIES=		x11

# GPLv2 - LGPLv2 - GFPLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 archive atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gexiv2 gio-2.0 glib-2.0 gmodule-2.0 gnome-autoar-0
WANTLIB += gobject-2.0 gtk-3 intl m pango-1.0 pangocairo-1.0 pthread
WANTLIB += tracker-sparql-2.0 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

RUN_DEPENDS=		x11/gnome/gvfs \
			devel/gsettings-desktop-schemas

LIB_DEPENDS=		graphics/libgexiv2 \
			x11/gnome/autoar \
			x11/gnome/tracker

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=		-Denable-selinux=false

# needs 'org.gnome.nautilus.preferences'
TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
