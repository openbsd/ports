# $OpenBSD: Makefile,v 1.26 2010/07/27 12:58:43 landry Exp $

COMMENT=	Xfce4 application finder

XFCE_PROJECT=	xfce4-appfinder
REVISION=	0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	::x11/xfce4/libxfce4menu \
		::x11/xfce4/thunar \
		::x11/xfce4/xfconf \
		::x11/gtk+2

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png xfce4util z \
		ICE SM dbus-1 dbus-glib-1 exo-0.3 gio-2.0 gthread-2.0 \
		jpeg pcre pthread startup-notification-1 \
		xfcegui4 pthread-stubs xcb execinfo gamin-1 xcb-atom \
		xcb-aux xcb-event gthread-2.0 xcb-render xcb-render-util \
		xfce4menu-0.1 thunar-vfs-1 xfconf-0 gdk-x11-2.0 \
		gdk_pixbuf-2.0 gtk-x11-2.0


.include <bsd.port.mk>
