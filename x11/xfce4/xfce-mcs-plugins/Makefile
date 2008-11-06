# $OpenBSD: Makefile,v 1.22 2008/11/06 15:34:46 landry Exp $

COMMENT=	settings manager plug-ins for xfce4

XFCE_PROJECT=	xfce-mcs-plugins

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIBTOOL_FLAGS=	--tag=disable-static
LIB_DEPENDS=	xfce4mcs-client.>=3,xfce4mcs-manager.>=3::x11/xfce4/libxfce4mcs \
		xfcegui4.>=4::x11/xfce4/libxfcegui4

RUN_DEPENDS=	::x11/xfce4/xfce-mcs-manager
BUILD_DEPENDS=	::x11/xfce4/xfce-mcs-manager

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png startup-notification-1 xfce4util z

.include <bsd.port.mk>
