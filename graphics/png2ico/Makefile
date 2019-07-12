# $OpenBSD: Makefile,v 1.21 2019/07/12 20:47:08 sthen Exp $

COMMENT=	convert PNG images to Windows .ico files

VERSION=	2002-12-09
PKGNAME=	png2ico-${VERSION:S/-//g}
DISTNAME=	png2ico-src-${VERSION}
REVISION =	4
CATEGORIES=	graphics www
HOMEPAGE=	https://www.winterdrache.de/freeware/png2ico/
MASTER_SITES=	${HOMEPAGE}data/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c m ${COMPILER_LIBCXX} z png>=3

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	graphics/png

MAKE_ENV=	CXX="${CXX}"
NO_TEST=	Yes
WRKDIST=	${WRKDIR}/png2ico

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/png2ico ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/png2ico.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
