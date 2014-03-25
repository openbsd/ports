# $OpenBSD: Makefile,v 1.5 2014/03/25 21:20:39 espie Exp $

COMMENT=		HTTP testing tool

DISTNAME=		wbox-5
CATEGORIES=		net www
REVISION =		0

HOMEPAGE=		http://www.hping.org/wbox/

MAINTAINER=		Laurent Fanis <laurent.fanis@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/wbox ${PREFIX}/bin

.include <bsd.port.mk>
