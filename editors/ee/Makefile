# $OpenBSD: Makefile,v 1.14 2013/12/06 15:46:31 bcallah Exp $

COMMENT=		easy to use text editor

VERSION=		1.5.2
DISTNAME=		ee-${VERSION}.src
PKGNAME=		ee-${VERSION}
REVISION=		0
EPOCH=			0
CATEGORIES=		editors

HOMEPAGE=		http://www.users.uswest.net/~hmahon/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses

MASTER_SITES=		http://devio.us/~bcallah/source/
EXTRACT_SUFX=		.tgz

WRKDIST=		${WRKDIR}/easyedit-${VERSION}
MAKE_ENV=		SYSCONFDIR=${SYSCONFDIR} \
			CC="${CC}" 

NO_TEST=		Yes

do-install:
	@perl -i -pe 's:%%SYSCONFDIR%%:${SYSCONFDIR}:g' ${WRKSRC}/ee.1
	${INSTALL_PROGRAM} ${WRKDIST}/ee ${PREFIX}/bin/ee
	${INSTALL_DATA} ${WRKDIST}/ee.1	${PREFIX}/man/man1/ee.1

.include <bsd.port.mk>
