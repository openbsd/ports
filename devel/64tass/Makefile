# $OpenBSD: Makefile,v 1.2 2020/04/01 11:49:50 mglocker Exp $

COMMENT=	turbo assembler compatible cross-assembler for 65xx

DISTNAME=	64tass-1.55.2176-src
PKGNAME=	${DISTNAME:S/-src//}
EXTRACT_SUFX=	.zip
CATEGORIES=	devel

HOMEPAGE=	http://tass64.sourceforge.net/
MAINTAINER=	Marcus Glocker <marcus@nazgul.ch> 

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tass64/}

ALL_TARGET=

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/64tass ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/64tass.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/64tass
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/64tass
	${INSTALL_DATA} ${WRKDIST}/README.html ${PREFIX}/share/doc/64tass

.include <bsd.port.mk>
