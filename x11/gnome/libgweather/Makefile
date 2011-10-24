# $OpenBSD: Makefile,v 1.31 2011/10/24 17:44:03 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		3.2.1

SHARED_LIBS +=		gweather-3             0.0      # 0.3

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			devel/gconf2 \
			x11/gnome

MODGNOME_TOOLS= 	goi

LIB_DEPENDS=		devel/libsoup,-gnome \
			x11/gtk+3

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += cairo cairo-gobject dbus-1 drm expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-keyring gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 xcb xcb-render xcb-shm xml2 z

MODGCONF2_SCHEMAS_DIR=	libgweather

CONFIGURE_ARGS+=	--with-zoneinfo-dir="/usr/share/zoneinfo"

.include <bsd.port.mk>
