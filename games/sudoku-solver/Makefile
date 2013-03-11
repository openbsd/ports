# $OpenBSD: Makefile,v 1.18 2013/03/11 11:07:40 espie Exp $

COMMENT=	sudoku puzzle solver with cli, gui, and web ui

DISTNAME=	sudoku-solver-1.0.1
REVISION=	6

CATEGORIES=    	games www x11

HOMEPAGE=	http://www.etc.msys.ch/software/sudoku/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		Xt c crypto m pthread z fcgi Xm

MASTER_SITES=  	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

MODULES=	devel/gettext

BUILD_DEPENDS=	www/clearsilver
LIB_DEPENDS=	www/fcgi \
		x11/openmotif

MAKE_ENV=	LDADD=-lm
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

NO_TEST=	Yes

.include <bsd.port.mk>
