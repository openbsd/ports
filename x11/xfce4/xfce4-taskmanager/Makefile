# $OpenBSD: Makefile,v 1.3 2010/10/11 08:19:37 jasper Exp $

COMMENT=	Xfce4 task manager and system monitor

XFCE_VERSION=	1.0.0
XFCE_GOODIE=	xfce4-taskmanager
REVISION=	1

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	::x11/gtk+2 \
		::devel/libwnck

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-render-util z  ICE SM XRes xcb-atom xcb-aux xcb-event
WANTLIB += execinfo startup-notification-1 wnck-1 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gtk-x11-2.0

.include <bsd.port.mk>
