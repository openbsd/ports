# $OpenBSD: Makefile,v 1.12 2007/05/16 14:22:40 steven Exp $

ONLY_FOR_ARCHS=	arm i386 powerpc sparc

COMMENT=	"battery monitor panel plugin for xfce4"

V=		0.5.0
DISTNAME=	xfce4-battery-plugin-${V}
PKGNAME=	xfce4-battery-${V}

HOMEPAGE=	http://goodies.xfce.org/projects/panel-plugins/xfce4-battery-plugin/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-battery-plugin/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

LIB_DEPENDS=	xfce4panel::x11/xfce4/xfce4-panel

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		atk-1.0 c cairo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png xfce4util xfcegui4 z



.include <bsd.port.mk>
