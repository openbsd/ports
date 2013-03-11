# $OpenBSD: Makefile,v 1.4 2013/03/11 11:44:50 espie Exp $

COMMENT=		HTTP testing tool

DISTNAME=		wbox-5
CATEGORIES=		net www

HOMEPAGE=		http://www.hping.org/wbox/

MAINTAINER=		Laurent Fanis <laurent@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/wbox ${PREFIX}/bin

.include <bsd.port.mk>
