# $OpenBSD: Makefile,v 1.3 2012/09/28 07:10:01 ajacoutot Exp $

COMMENT=		GNOME dictionary application

GNOME_PROJECT=		gnome-dictionary
GNOME_VERSION=		3.6.0

SHARED_LIBS +=  gdict-1.0                 8.0 # 6.7

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm z icule icuuc
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata

LIB_DEPENDS=		x11/gtk+3

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes

.include <bsd.port.mk>
