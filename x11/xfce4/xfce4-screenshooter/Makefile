# $OpenBSD: Makefile,v 1.1.1.1 2008/09/22 13:25:35 landry Exp $

COMMENT=	take screenshots of windows or full desktop

XFCE_VERSION=	1.3.2
XFCE_PLUGIN=	screenshooter
EXTRACT_SUFX=	.tar.gz

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		startup-notification-1 xfce4util xfcegui4 z

.include <bsd.port.mk>
