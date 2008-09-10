# $OpenBSD: Makefile,v 1.20 2008/09/10 15:08:00 landry Exp $

COMMENT=	sticky notes for the xfce4 desktop

XFCE_VERSION=	1.6.2
XFCE_PLUGIN=	notes
EXTRACT_SUFX=	.tar.gz

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS+=	thunar-vfs-1::x11/xfce4/thunar

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png xfce4util z \
		xfcegui4 exo-0.3 gthread-2.0 pthread

.include <bsd.port.mk>
