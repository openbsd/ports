# $OpenBSD: Makefile,v 1.24 2013/01/02 17:12:22 landry Exp $

COMMENT=	Xfce4 desktop screenshot panel plugin

XFCE_VERSION=	1.7.9
XFCE_GOODIE=	xfce4-screenshooter
REVISION=	5

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	x11/xfce4/xfce4-panel \
		x11/xfce4/libxfcegui4 \
		devel/libsoup

MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 startup-notification-1 xcb xcb-aux xcb-render
WANTLIB += xcb-shm xfce4panel-1.0 xfce4util xfcegui4 xml2 z stdc++
WANTLIB += harfbuzz icudata icule icuuc

.include <bsd.port.mk>
