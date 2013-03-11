# $OpenBSD: Makefile,v 1.41 2013/03/11 11:46:11 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		3.6.2

SHARED_LIBS +=		gweather-3             1.0      # 2.0

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gthread-2.0 gtk-3
WANTLIB += harfbuzz icudata icule icuuc m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

MODGNOME_TOOLS= 	goi
MODGNOME_ICON_CACHE=	Yes

LIB_DEPENDS=		devel/libsoup,-gnome \
			x11/gtk+3

CONFIGURE_ARGS+=	--with-zoneinfo-dir="/usr/share/zoneinfo"

.include <bsd.port.mk>
