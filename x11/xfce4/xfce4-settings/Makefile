# $OpenBSD: Makefile,v 1.2 2009/03/08 17:51:37 landry Exp $

COMMENT=	settings helpers for xfce4

XFCE_PROJECT=	xfce4-settings
PKGNAME=	${DISTNAME}p0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES =	x11/xfce4
DESKTOP_FILES =	Yes
LIB_DEPENDS=	xfce4kbd-private,xfcegui4::x11/xfce4/libxfcegui4 \
		wnck-1::devel/libwnck \
		notify::devel/libnotify \
		exo-0.3::x11/xfce4/exo \
		xklavier::x11/gnome/libxklavier \
		xfconf-0::x11/xfce4/xfconf

WANTLIB =	X11 Xcursor Xi Xrandr c cairo dbus-glib-1 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m \
		pango-1.0 pthread xfce4util

.include <bsd.port.mk>
