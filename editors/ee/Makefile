# $OpenBSD: Makefile,v 1.2 2002/10/26 00:39:15 naddy Exp $

COMMENT=		"easy to use text editor"

VERSION=		1.4.4
DISTNAME=		ee-${VERSION}
CATEGORIES=     	editors

HOMEPAGE=		http://mahon.cwx.net/

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}sources/
EXTRACT_SUFX=		.src.tgz

WRKDIST=		${WRKDIR}/easyedit-${VERSION}
MAKE_ENV=		SYSCONFDIR=${SYSCONFDIR}

NO_REGRESS=		Yes

do-install:
	perl -i -pe 's:%%SYSCONFDIR%%:${SYSCONFDIR}:g' ${WRKSRC}/ee.1
	${INSTALL} ${WRKDIST}/ee ${PREFIX}/bin/ee
	${INSTALL_DATA} ${WRKDIST}/ee.1	${PREFIX}/man/man1/ee.1

.include <bsd.port.mk>
