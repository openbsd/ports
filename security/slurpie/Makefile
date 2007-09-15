# $OpenBSD: Makefile,v 1.6 2007/09/15 23:30:01 merdely Exp $
# $FreeBSD: ports/security/slurpie/Makefile,v 1.4 2000/11/06 00:09:26 obrien Exp $

COMMENT=	distributed passwd file cracker

VERSION=	2.0b
DISTNAME=	slurpie
PKGNAME=	${DISTNAME}-${VERSION}
CATEGORIES=	security

MASTER_SITES=	http://www.jps.net/coati/archives/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.jps.net/coati/archives/slurpie.html

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/slurp ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/slurpie ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/slurpie
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/slurpie/README
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/slurpie
	${INSTALL_DATA} ${WRKSRC}/hosts.dat \
		${PREFIX}/share/examples/slurpie/hosts.dat

.include <bsd.port.mk>
