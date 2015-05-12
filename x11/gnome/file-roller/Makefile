# $OpenBSD: Makefile,v 1.113 2015/05/12 06:41:54 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	archive manager utility for GNOME

GNOME_PROJECT=	file-roller
GNOME_VERSION=	3.16.2

CATEGORIES=	archivers

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += json-glib-1.0 lzma m magic nautilus-extension epoxy lzo2
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

LIB_DEPENDS=	archivers/libarchive>=3.1.2 \
		devel/json-glib \
		devel/libmagic \
		devel/libnotify \
		x11/gnome/nautilus

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_ENV=		CPIO=${LOCALBASE}/bin/gcpio

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}

# XXX: Remove when patch-configure_ac is merged
AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

.include <bsd.port.mk>
