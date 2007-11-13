# $OpenBSD: Makefile,v 1.21 2007/11/13 14:54:31 steven Exp $

COMMENT=	3D block-dropping game

DISTNAME=	xbl-1.1.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games
HOMEPAGE=	http://www710.univ-lyon1.fr/ftp/xbl/xbl.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m

MASTER_SITES=	http://www710.univ-lyon1.fr/ftp/xbl/

USE_X11=	Yes
CONFIGURE_STYLE=gnu	# also uses imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
