# $OpenBSD: Makefile,v 1.14 2009/04/28 19:44:29 landry Exp $

COMMENT=	Xfce4 advanced calendar

XFCE_PROJECT=	orage

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	xfcegui4.>=4.0::x11/xfce4/libxfcegui4 \
		xfce4panel.>=2.2::x11/xfce4/xfce4-panel \
		notify.>=2::devel/libnotify \
		dbus-glib-1::x11/dbus-glib \
		dbus-1.>=6::x11/dbus

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
		startup-notification-1 xfce4util z

.include <bsd.port.mk>
