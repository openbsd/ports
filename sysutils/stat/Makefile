# $OpenBSD: Makefile,v 1.6 2000/03/30 15:41:03 kevlo Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=       stat-1.3
CATEGORIES=	sysutils
MASTER_SITES=   http://www.freebsd.org/~wosch/src/

MAINTAINER=     ports@OpenBSD.ORG

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=			Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/stat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/stat.cat1 ${PREFIX}/man/man1/stat.0

.include <bsd.port.mk>
