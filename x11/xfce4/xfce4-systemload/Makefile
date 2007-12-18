# $OpenBSD: Makefile,v 1.14 2007/12/18 21:17:30 landry Exp $

COMMENT=	displays cpu/memory/swap/uptime in xfce4 panel

V=		0.4.2
DISTNAME=	xfce4-systemload-plugin-${V}
PKGNAME=	xfce4-systemload-${V}p0

HOMEPAGE=	http://goodies.xfce.org/projects/panel-plugins/xfce4-systemload-plugin
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-systemload-plugin/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
LIB_DEPENDS=	xfce4panel.>=2.2::x11/xfce4/xfce4-panel \
		xfcegui4.>=4::x11/xfce4/libxfcegui4 \

WANTLIB=	X11 Xdmcp Xrender Xau Xdamage fontconfig freetype kvm \
		Xcursor Xext Xfixes Xi Xcomposite Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 m z c \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		xfce4util

.include <bsd.port.mk>
