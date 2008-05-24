# $OpenBSD: Makefile,v 1.13 2008/05/24 01:24:31 fgsch Exp $

COMMENT=	xkb layout switcher panel plugin for xfce4

V=		0.4.3
DISTNAME=	xfce4-xkb-plugin-${V}
PKGNAME=	xfce4-xkb-${V}p1

HOMEPAGE=	http://goodies.xfce.org/projects/panel-plugins/xfce4-xkb-plugin

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-xkb-plugin/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
LIB_DEPENDS=	xfce4panel.>=2.2::x11/xfce4/xfce4-panel \
		xfcegui4.>=4::x11/xfce4/libxfcegui4 \

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png xfce4util z

.include <bsd.port.mk>
