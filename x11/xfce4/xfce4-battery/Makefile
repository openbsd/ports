# $OpenBSD: Makefile,v 1.16 2008/02/26 19:39:09 jcs Exp $

ONLY_FOR_ARCHS=	amd64 arm i386 powerpc sparc

COMMENT=	battery monitor panel plugin for xfce4

V=		0.5.0
DISTNAME=	xfce4-battery-plugin-${V}
PKGNAME=	xfce4-battery-${V}p1

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
		Xcomposite Xdamage atk-1.0 c cairo expat fontconfig freetype \
		gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gtk-x11-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png xfce4util xfcegui4 z m



.include <bsd.port.mk>
