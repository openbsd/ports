# $OpenBSD: Makefile,v 1.3 2002/03/21 21:25:51 espie Exp $
# $FreeBSD: ports/security/slurpie/Makefile,v 1.4 2000/11/06 00:09:26 obrien Exp $

COMMENT=	"distributed passwd file cracker"

VERSION=	2.0b
DISTNAME=	slurpie
PKGNAME=	${DISTNAME}-${VERSION}
CATEGORIES=	security
NEED_VERSION=	1.515
MASTER_SITES=	http://www.jps.net/coati/archives/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.jps.net/coati/archives/slurpie.html

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/slurp ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/slurpie ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/slurpie
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/slurpie/README
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/slurpie
	${INSTALL_DATA} ${WRKSRC}/hosts.dat \
		${PREFIX}/share/examples/slurpie/hosts.dat

.include <bsd.port.mk>
