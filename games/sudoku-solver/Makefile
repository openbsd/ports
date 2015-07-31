# $OpenBSD: Makefile,v 1.20 2015/07/31 20:49:54 naddy Exp $

COMMENT=	sudoku puzzle solver with cli, gui, and web ui

DISTNAME=	sudoku-solver-1.0.1
REVISION=	8

CATEGORIES=    	games www x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		Xt c crypto m pthread z fcgi Xm

MASTER_SITES=	http://spacehopper.org/mirrors/
EXTRACT_SUFX=	.tgz

MODULES=	devel/gettext

BUILD_DEPENDS=	www/clearsilver
LIB_DEPENDS=	www/fcgi \
		x11/openmotif

MAKE_ENV=	LDADD=-lm
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

NO_TEST=	Yes

.include <bsd.port.mk>
