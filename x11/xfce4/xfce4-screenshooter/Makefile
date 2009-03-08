# $OpenBSD: Makefile,v 1.2 2009/03/08 17:38:29 landry Exp $

COMMENT=	take screenshots of windows or full desktop

XFCE_VERSION=	1.5.1
XFCE_GOODIE=	xfce4-screenshooter
EXTRACT_SUFX=	.tar.gz

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	xfce4panel::x11/xfce4/xfce4-panel
DESKTOP_FILES=	Yes

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m \
		 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		startup-notification-1 xfce4util xfcegui4 z

.include <bsd.port.mk>
