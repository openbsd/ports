# $OpenBSD: Makefile,v 1.1.1.1 2007/03/24 16:35:48 espie Exp $

COMMENT=		"K Desktop Environment, toys"
DISTNAME=		kdetoys-${VERSION}

LIB_DEPENDS+= 	bz2::archivers/bzip2 \
		gif::graphics/libungif \
		pcre,pcreposix::devel/pcre

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype jpeg m png
WANTLIB += pthread stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml

.include <bsd.port.mk>
