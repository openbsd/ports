# $OpenBSD: Makefile,v 1.80 2013/03/11 11:46:10 espie Exp $

SHARED_ONLY=		Yes

COMMENT-main=		archive manager utility for GNOME
COMMENT-nautilus=	file-roller plugin for nautilus

GNOME_PROJECT=		file-roller
GNOME_VERSION=		3.6.3

PKGNAME-main=		${DISTNAME}
PKGNAME-nautilus=	nautilus-${DISTNAME}

CATEGORIES=		archivers

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo
WANTLIB += cairo-gobject drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z ffi stdc++ pthread icule icuuc
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MULTI_PACKAGES= 	-main -nautilus

WANTLIB-main=		${WANTLIB} bz2 c lzma archive json-glib-1.0 magic notify
RUN_DEPENDS-main=	archivers/gcpio \
			archivers/gtar \
			archivers/p7zip \
			archivers/unzip \
			archivers/xz \
			archivers/zip \
			sysutils/cdrtools \
			${RUN_DEPENDS}

# "The Unarchiver" has not been ported to OpenBSD yet
RUN_DEPENDS-main +=	archivers/unrar

LIB_DEPENDS-main=	archivers/libarchive \
			devel/json-glib \
			devel/libmagic \
			devel/libnotify \
			x11/gtk+3

WANTLIB-nautilus=	${WANTLIB} nautilus-extension
LIB_DEPENDS-nautilus=	x11/gnome/nautilus
RUN_DEPENDS-nautilus=	x11/gnome/file-roller,-main

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=		Yes

CONFIGURE_ARGS=		--disable-packagekit

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}

.include <bsd.port.mk>
