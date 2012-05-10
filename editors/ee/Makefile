# $OpenBSD: Makefile,v 1.11 2012/05/10 12:56:27 gonzalo Exp $

COMMENT=		easy to use text editor

VERSION=		1.5.2
DISTNAME=		ee-${VERSION}.src
CATEGORIES=		editors

HOMEPAGE=		http://mahon.cwx.net/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}sources/
EXTRACT_SUFX=		.tgz

WRKDIST=		${WRKDIR}/easyedit-${VERSION}
MAKE_ENV=		SYSCONFDIR=${SYSCONFDIR} \
			CC="${CC}" 

NO_REGRESS=		Yes

do-install:
	@perl -i -pe 's:%%SYSCONFDIR%%:${SYSCONFDIR}:g' ${WRKSRC}/ee.1
	${INSTALL} ${WRKDIST}/ee ${PREFIX}/bin/ee
	${INSTALL_DATA} ${WRKDIST}/ee.1	${PREFIX}/man/man1/ee.1

.include <bsd.port.mk>
