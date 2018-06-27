# $OpenBSD: Makefile,v 1.183 2018/06/27 21:04:10 espie Exp $

TRACKER_API=		2.0

COMMENT=		GNOME file manager

GNOME_PROJECT=		nautilus
GNOME_VERSION=		3.28.1
REVISION=		1

SHARED_LIBS += nautilus-extension        3.0 # 1.4.0

CATEGORIES=		x11

# GPLv2 - LGPLv2 - GFPLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += atk-1.0 c cairo cairo-gobject gailutil-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gexiv2 gio-2.0 glib-2.0 gmodule-2.0 gnome-autoar-0
WANTLIB += gnome-desktop-3 gobject-2.0 gtk-3 intl m pango-1.0
WANTLIB += pangocairo-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

RUN_DEPENDS=		x11/gnome/gvfs \
			devel/gsettings-desktop-schemas

LIB_DEPENDS=		graphics/libgexiv2 \
			x11/gnome/desktop \
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
