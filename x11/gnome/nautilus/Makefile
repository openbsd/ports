# $OpenBSD: Makefile,v 1.168 2016/10/31 11:23:46 ajacoutot Exp $

TRACKER_API=		1.0

COMMENT=		GNOME file manager

GNOME_PROJECT=		nautilus
GNOME_VERSION=		3.22.1

SHARED_LIBS +=  nautilus-extension   3.0      # 5.0

CATEGORIES=		x11

# GPLv2 - LGPLv2 - GFPLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject crypto dbus-1 epoxy
WANTLIB += exempi exif expat ffi fontconfig freetype gailutil-3
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-autoar-0
WANTLIB += gnome-desktop-3 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv icudata icui18n icuuc intl kvm lz4 lzma
WANTLIB += lzo2 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs sqlite3 uuid xcb xcb-render
WANTLIB += xcb-shm xml2 z
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common

MODULES=		devel/dconf \
			x11/gnome

RUN_DEPENDS=		x11/gnome/gvfs \
			devel/gsettings-desktop-schemas

LIB_DEPENDS=		x11/gnome/desktop \
			graphics/libexif \
			textproc/exempi \
			x11/gnome/autoar \
			x11/gnome/tracker

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=		--disable-selinux

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/nautilus

# needs 'org.gnome.nautilus.preferences'
TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}

.include <bsd.port.mk>
