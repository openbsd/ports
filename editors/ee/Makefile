# $OpenBSD: Makefile,v 1.6 2006/01/27 22:45:52 brad Exp $

COMMENT=		"easy to use text editor"

VERSION=		1.4.6
DISTNAME=		ee-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=     	editors

HOMEPAGE=		http://mahon.cwx.net/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}sources/
EXTRACT_SUFX=		.src.tgz

WRKDIST=		${WRKDIR}/easyedit-${VERSION}
MAKE_ENV=		SYSCONFDIR=${SYSCONFDIR}

NO_REGRESS=		Yes

do-install:
	@perl -i -pe 's:%%SYSCONFDIR%%:${SYSCONFDIR}:g' ${WRKSRC}/ee.1
	${INSTALL} ${WRKDIST}/ee ${PREFIX}/bin/ee
	${INSTALL_DATA} ${WRKDIST}/ee.1	${PREFIX}/man/man1/ee.1

.include <bsd.port.mk>
