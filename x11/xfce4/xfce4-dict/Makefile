# $OpenBSD: Makefile,v 1.3 2007/12/18 21:09:25 landry Exp $

COMMENT=	query a dictionary server from the xfce4 panel

V=		0.2.1
DISTNAME=	xfce4-dict-plugin-${V}
PKGNAME=	xfce4-dict-${V}p0

HOMEPAGE=	http://goodies.xfce.org/projects/panel-plugins/xfce4-dict-plugin

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-dict-plugin/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
LIB_DEPENDS=	xfce4panel.>=2.2::x11/xfce4/xfce4-panel \
		xfcegui4.>=4::x11/xfce4/libxfcegui4 \

WANTLIB=	ICE SM X11 Xdmcp Xrender Xdamage Xau fontconfig freetype \
		Xcursor Xext Xfixes Xi Xinerama Xcomposite Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 m z c \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 pcre \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png pthread \
		startup-notification-1 xfce4util gthread-2.0

.include <bsd.port.mk>
