# $OpenBSD: Makefile,v 1.7 2008/07/08 11:45:38 landry Exp $

COMMENT=	notification daemon for Xfce4 desktop

XFCE_VERSION=	0.3.7
XFCE_GOODIE=	notification-daemon-xfce
PKGNAME=	${DISTNAME}p3

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3.5,xfce4mcs-manager.>=3.5::x11/xfce4/libxfce4mcs \
		sexy::x11/libsexy \
		notify.>=2.2::devel/libnotify

RUN_DEPENDS=	::x11/xfce4/xfce-mcs-manager \
		::x11/hicolor-icon-theme

BUILD_DEPENDS=	::x11/xfce4/xfce-mcs-manager

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png pthread startup-notification-1 xfce4util xml2 z

.include <bsd.port.mk>
