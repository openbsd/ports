# $OpenBSD: Makefile,v 1.2 2007/03/24 13:23:59 espie Exp $

COMMENT=		"K Desktop Environment, edu"
DISTNAME=		kdeedu-${VERSION}
PKGNAME=		${DISTNAME}p0

BUILD_DEPENDS+=		::math/eigen
LIB_DEPENDS+=	bz2::archivers/bzip2 \
		openbabel::misc/openbabel \
		pcre,pcreposix::devel/pcre \
		cfitsio::math/cfitsio \
		gif::graphics/libungif

WANTLIB += GL GLU ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama
WANTLIB += Xpm Xrandr Xrender Xtst c fontconfig freetype jpeg
WANTLIB += m png pthread stdc++ util z
WANTLIB += Qt3Support QtDesigner QtGui QtOpenGL QtSvg QtXml QtDBus

.include <bsd.port.mk>
