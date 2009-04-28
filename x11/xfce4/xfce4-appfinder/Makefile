# $OpenBSD: Makefile,v 1.21 2009/04/28 19:47:58 landry Exp $

COMMENT=	Xfce4 application finder

XFCE_PROJECT=	xfce4-appfinder

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	xfce4menu-0.1::x11/xfce4/libxfce4menu \
		thunar-vfs-1::x11/xfce4/thunar \
		xfconf-0::x11/xfce4/xfconf \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2


WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png xfce4util z \
		ICE SM dbus-1 dbus-glib-1 exo-0.3 fam gio-2.0 gthread-2.0 \
		jpeg pcre pthread rpcsvc startup-notification-1 stdc++ \
		xfcegui4


.include <bsd.port.mk>
