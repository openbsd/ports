# $OpenBSD: Makefile,v 1.9 2019/11/11 17:35:50 jca Exp $

COMMENT=	limited problem scanner for C source files

V=		1.3
REVISION=	0

PKGNAME=	pscan-$V
DISTNAME=	pscan
DISTFILES=	${PKGNAME}{pscan}${EXTRACT_SUFX}
EPOCH=		0
WRKDIST=	${WRKDIR}

CATEGORIES=	devel

HOMEPAGE=	http://deployingradius.com/pscan/

MAINTAINER=	Steffen Wendzel <wendzel@hs-worms.de>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c

ALL_TARGET=	pscan

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pscan ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/find_formats.sh ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pscan
	${INSTALL_DATA} ${WRKSRC}/test.c ${PREFIX}/share/examples/pscan
	${INSTALL_DATA} ${WRKSRC}/wu-ftpd.pscan ${PREFIX}/share/examples/pscan
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/examples/pscan

.include <bsd.port.mk>
