# $OpenBSD: Makefile,v 1.1.1.1 2007/05/17 09:25:13 steven Exp $

COMMENT=	"generic monitor for the xfce4 panel"

V=		3.1
DISTNAME=	xfce4-genmon-plugin-${V}
PKGNAME=	xfce4-genmon-${V}

HOMEPAGE=	http://goodies.xfce.org/projects/panel-plugins/xfce4-genmon-plugin

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-genmon-plugin/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
LIB_DEPENDS=	xfce4panel.>=2.2::x11/xfce4/xfce4-panel \
		xfcegui4.>=4::x11/xfce4/libxfcegui4 \

RUN_DEPENDS=	:xfce4-panel->=4.4.1:x11/xfce4/xfce4-panel

WANTLIB=	X11 Xdmcp Xrender Xau fontconfig freetype m z c \
		Xcursor Xext Xfixes Xi Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		xfce4util.>=1

.include <bsd.port.mk>
