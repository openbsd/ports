# $OpenBSD: Makefile,v 1.20 2013/01/02 17:12:22 landry Exp $

COMMENT=	Xfce4 places panel plugin

XFCE_VERSION=	1.4.0
XFCE_PLUGIN=	places
REVISION =	0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS +=	devel/libnotify

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo drm exo-1 expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 notify
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 stdc++
WANTLIB += xcb xcb-aux xcb-render xcb-shm xfce4util xfce4ui-1 z
WANTLIB += harfbuzz icudata icule icuuc

.include <bsd.port.mk>
