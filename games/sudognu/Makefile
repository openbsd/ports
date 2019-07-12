# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:25 sthen Exp $

COMMENT=	sudoku solver and creator

DISTNAME=	sudognu-1.09
REVISION=	1
CATEGORIES=	games

HOMEPAGE=	http://baaran.de/sudoku/index-en.shtml

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c m z pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sudognu/}

USE_GMAKE=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/sudognu ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/sudognu.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sudognu
	${INSTALL_SCRIPT} ${WRKSRC}/*.cgi ${PREFIX}/share/examples/sudognu

.include <bsd.port.mk>
