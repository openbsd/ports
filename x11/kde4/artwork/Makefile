# $OpenBSD: Makefile,v 1.3 2007/09/15 20:04:22 merdely Exp $

COMMENT=		K Desktop Environment, artwork
DISTNAME=		kdeartwork-${VERSION}
PKGNAME=		${DISTNAME}p0

LIB_DEPENDS+= 	kdecore.>=8,kdefx,kdesu,kdeui,kio,kparts,kwalletclient::x11/kde4/libs \
		kscreensaver::x11/kde4/base
BUILD_DEPENDS=	::x11/xscreensaver

WANTLIB += GL GLU ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama
WANTLIB += Xpm Xrandr Xrender Xtst c fontconfig freetype m png
WANTLIB += pthread stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtOpenGL
WANTLIB += bz2 Xt

.include <bsd.port.mk>
