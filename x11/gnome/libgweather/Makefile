# $OpenBSD: Makefile,v 1.32 2011/10/29 08:12:32 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		3.2.1

REVISION=		0

SHARED_LIBS +=		gweather-3             0.0      # 0.3

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += dbus-1 dbus-glib-1 drm expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gthread-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs soup-2.4 soup-gnome-2.4 sqlite3 stdc++
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			devel/gconf2 \
			x11/gnome

MODGNOME_TOOLS= 	goi

LIB_DEPENDS=		devel/libsoup,-gnome \
			x11/gtk+3


MODGCONF2_SCHEMAS_DIR=	libgweather

CONFIGURE_ARGS+=	--with-zoneinfo-dir="/usr/share/zoneinfo"

.include <bsd.port.mk>
