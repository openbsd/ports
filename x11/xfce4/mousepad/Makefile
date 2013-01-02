# $OpenBSD: Makefile,v 1.26 2013/01/02 17:12:21 landry Exp $

COMMENT=	Xfce4 simple text editor

XFCE_VERSION=	0.2.16
XFCE_GOODIE=	mousepad
REVISION=	11

HOMEPAGE=	http://www.xfce.org/projects/mousepad
# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfcegui4

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		startup-notification-1 xfce4util z pthread-stubs xcb \
		xcb-aux xfcegui4 X11-xcb ffi stdc++ \
		gthread-2.0 pthread xcb-render GL Xxf86vm drm xcb-shm
WANTLIB += harfbuzz icudata icule icuuc

.include <bsd.port.mk>
