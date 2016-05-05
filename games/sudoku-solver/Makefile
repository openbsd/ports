# $OpenBSD: Makefile,v 1.22 2016/05/05 19:52:28 naddy Exp $

COMMENT=	sudoku puzzle solver with cli, gui, and web ui

DISTNAME=	sudoku-solver-1.0.1
REVISION=	9

CATEGORIES=    	games www x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		Xt c crypto m pthread z fcgi Xm

MASTER_SITES=	https://spacehopper.org/mirrors/
EXTRACT_SUFX=	.tgz

MODULES=	devel/gettext

BUILD_DEPENDS=	www/clearsilver
LIB_DEPENDS=	www/fcgi \
		x11/motif

MAKE_ENV=	LDADD=-lm
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

NO_TEST=	Yes

.include <bsd.port.mk>
