# $OpenBSD: Makefile,v 1.8 2010/10/18 18:00:18 espie Exp $

COMMENT=	sudoku solver and creator

DISTNAME=	sudognu-1.09
REVISION=	1
CATEGORIES=	games

HOMEPAGE=	http://baaran.de/sudoku/index-en.shtml

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m z pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sudognu/}

USE_GMAKE=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/sudognu ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/sudognu.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sudognu
	${INSTALL_SCRIPT} ${WRKSRC}/*.cgi ${PREFIX}/share/examples/sudognu

.include <bsd.port.mk>
