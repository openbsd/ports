# $OpenBSD: Makefile,v 1.1.1.1 2007/03/24 14:20:19 espie Exp $

COMMENT=		"K Desktop Environment, artwork"
DISTNAME=		kdeartwork-${VERSION}

LIB_DEPENDS+= 	bz2::archivers/bzip2

WANTLIB += GL GLU ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama
WANTLIB += Xpm Xrandr Xrender Xtst c fontconfig freetype m png
WANTLIB += pthread stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtOpenGL

.include <bsd.port.mk>
