# $OpenBSD: Makefile,v 1.95 2014/04/01 17:03:14 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	archive manager utility for GNOME

GNOME_PROJECT=	file-roller
GNOME_VERSION=	3.12.0

CATEGORIES=	archivers

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += json-glib-1.0 lzma m magic nautilus-extension
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

RUN_DEPENDS=	archivers/gcpio \
		archivers/gtar \
		archivers/p7zip \
		archivers/unzip \
		archivers/xz \
		archivers/zip \
		sysutils/cdrtools

# "The Unarchiver" has not been ported to OpenBSD yet
RUN_DEPENDS +=	archivers/unrar

LIB_DEPENDS=	archivers/libarchive \
		devel/json-glib \
		devel/libmagic \
		x11/gnome/nautilus

MODGNOME_TOOLS= 	yelp
MODGNOME_TOOLS +=	desktop-file-utils
MODGNOME_TOOLS +=	gtk-update-icon-cache

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}

.include <bsd.port.mk>
