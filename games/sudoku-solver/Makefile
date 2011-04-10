# $OpenBSD: Makefile,v 1.15 2011/04/10 18:01:13 jasper Exp $

COMMENT=	sudoku puzzle solver with cli, gui, and web ui

DISTNAME=	sudoku-solver-1.0.1
REVISION=	4

CATEGORIES=    	games www x11

HOMEPAGE=	http://www.etc.msys.ch/software/sudoku/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		Xt c crypto m pthread z fcgi Xm

MASTER_SITES=  	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

MODULES=	devel/gettext

BUILD_DEPENDS=	www/clearsilver
LIB_DEPENDS=	www/fcgi \
		x11/openmotif

MAKE_ENV=	LDADD=-lm
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

NO_REGRESS=	Yes

.include <bsd.port.mk>
