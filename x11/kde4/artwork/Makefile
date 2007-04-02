# $OpenBSD: Makefile,v 1.2 2007/04/02 00:39:25 espie Exp $

COMMENT=		"K Desktop Environment, artwork"
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
