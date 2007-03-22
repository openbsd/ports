# $OpenBSD: Makefile,v 1.1.1.1 2007/03/22 22:24:32 espie Exp $

COMMENT=		"K Desktop Environment, network"
DISTNAME=		kdenetwork-${VERSION}

LIB_DEPENDS+=	gif::graphics/libungif \
		bz2::archivers/bzip2 \
		pcre,pcreposix::devel/pcre

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype jpeg m png
WANTLIB += pthread stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml

.include <bsd.port.mk>
