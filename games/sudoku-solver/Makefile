# $OpenBSD: Makefile,v 1.4 2009/08/30 20:45:23 sthen Exp $

COMMENT=	sudoku puzzle solver with cli, gui, and web ui

DISTNAME=	sudoku-solver-1.0.1

CATEGORIES=    	games www x11

HOMEPAGE=	http://www.etc.msys.ch/software/sudoku/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

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
