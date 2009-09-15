# $OpenBSD: Makefile,v 1.5 2009/09/15 17:37:21 jasper Exp $

COMMENT=	sudoku puzzle solver with cli, gui, and web ui

DISTNAME=	sudoku-solver-1.0.1
PKGNAME=	${DISTNAME}p0

CATEGORIES=    	games www x11

HOMEPAGE=	http://www.etc.msys.ch/software/sudoku/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c Xt crypto iconv pthread z

MASTER_SITES=  	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

USE_X11=	Yes
USE_MOTIF=	OpenMotif

MODULES=	devel/gettext

LIB_DEPENDS=	neo_cgi,neo_cs::www/clearsilver \
		fcgi::www/fcgi

NO_REGRESS=	Yes

.include <bsd.port.mk>
