# $OpenBSD: Makefile,v 1.41 2011/12/03 22:39:12 ajacoutot Exp $

COMMENT=	Xfce4 temperature/weather conditions panel plugin

XFCE_VERSION=	0.7.4
XFCE_PLUGIN=	weather
REVISION=	2

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	textproc/libxml
LIB_DEPENDS +=	x11/xfce4/libxfcegui4

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-aux xcb-render xcb-shm
WANTLIB += xfce4util xfcegui4 xml2 z

.include <bsd.port.mk>
