# $OpenBSD: Makefile,v 1.12 2013/10/11 23:49:52 naddy Exp $

COMMENT=	Convert PNG images to Windows .ico files

VERSION=	2002-12-08
PKGNAME=	png2ico-${VERSION:S/-//g}
DISTNAME=	png2ico-src-${VERSION}
CATEGORIES=	graphics www
HOMEPAGE=	http://www.winterdrache.de/freeware/png2ico/
MASTER_SITES=	${HOMEPAGE}data/

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m stdc++ z png>=3

LIB_DEPENDS=	graphics/png

MAKE_ENV=	CXX="${CXX}"
NO_TEST=	Yes
WRKDIST=	${WRKDIR}/png2ico

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/png2ico ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/png2ico.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
