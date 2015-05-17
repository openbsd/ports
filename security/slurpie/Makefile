# $OpenBSD: Makefile,v 1.9 2015/05/17 11:42:18 sthen Exp $

COMMENT=	distributed passwd file cracker

VERSION=	2.0b
REVISION=	0
DISTNAME=	slurpie
PKGNAME=	${DISTNAME}-${VERSION}
CATEGORIES=	security

MASTER_SITES=	http://www.jps.net/coati/archives/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.jps.net/coati/archives/slurpie.html

PERMIT_PACKAGE_CDROM=   Yes

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
