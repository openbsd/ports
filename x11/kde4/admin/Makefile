# $OpenBSD: Makefile,v 1.1.1.1 2007/03/24 16:59:10 espie Exp $

COMMENT=		"K Desktop Environment, admin tools"
DISTNAME=		kdeadmin-${VERSION}

LIB_DEPENDS+= 	bz2::archivers/bzip2
		
	

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml

.include <bsd.port.mk>
