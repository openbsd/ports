# $OpenBSD: Makefile,v 1.1.1.1 2010/06/14 19:54:29 landry Exp $

COMMENT=	Xfce4 task manager and system monitor

XFCE_VERSION=	1.0.0
XFCE_GOODIE=	xfce4-taskmanager

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		wnck-1::devel/libwnck

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-render-util z  ICE SM XRes xcb-atom xcb-aux xcb-event
WANTLIB += execinfo startup-notification-1

.include <bsd.port.mk>
