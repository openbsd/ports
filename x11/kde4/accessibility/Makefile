# $OpenBSD: Makefile,v 1.1.1.1 2007/03/24 13:46:58 espie Exp $

COMMENT=		"K Desktop Environment, accessibility"
DISTNAME=		kdeaccessibility-${VERSION}

LIB_DEPENDS+= 	bz2::archivers/bzip2

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml


.include <bsd.port.mk>
