# $OpenBSD: Makefile,v 1.7 2017/04/15 22:05:29 sthen Exp $

COMMENT=	limited problem scanner for C source files

V=		1.3

PKGNAME=	pscan-$V
DISTNAME=	pscan
DISTFILES=	${PKGNAME}{pscan}${EXTRACT_SUFX}
EPOCH=		0
WRKDIST=	${WRKDIR}

CATEGORIES=	devel

HOMEPAGE=	http://deployingradius.com/pscan/

MAINTAINER=	Steffen Wendzel <wendzel@hs-worms.de>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

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
