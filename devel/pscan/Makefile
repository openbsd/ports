# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:25 espie Exp $

COMMENT=	limited problem scanner for C source files

V=		1.6
DISTNAME=	pscan
PKGNAME=	${DISTNAME}-${V}
REVISION =	0
CATEGORIES=	devel

HOMEPAGE=	http://www.striker.ottawa.on.ca/~aland/pscan/

MAINTAINER=	Steffen Wendzel <cdp@doomed-reality.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c

DIST_SUBDIR=	${DISTNAME}-${V}
ALL_TARGET=	pscan

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pscan ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/find_formats.sh ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pscan
	${INSTALL_DATA} ${WRKSRC}/test.c ${PREFIX}/share/examples/pscan

.include <bsd.port.mk>
