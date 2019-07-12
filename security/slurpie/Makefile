# $OpenBSD: Makefile,v 1.11 2019/07/12 21:02:25 sthen Exp $

COMMENT=	distributed passwd file cracker

VERSION=	2.0b
REVISION=	1
DISTNAME=	slurpie
PKGNAME=	${DISTNAME}-${VERSION}
CATEGORIES=	security

MASTER_SITES=	http://www.jps.net/coati/archives/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.jps.net/coati/archives/slurpie.html

PERMIT_PACKAGE=	Yes

WANTLIB += c

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/slurp ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/slurpie ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/slurpie
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/slurpie/README
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/slurpie
	${INSTALL_DATA} ${WRKSRC}/hosts.dat \
		${PREFIX}/share/examples/slurpie/hosts.dat

.include <bsd.port.mk>
