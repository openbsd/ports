# $OpenBSD: Makefile,v 1.25 2019/07/12 20:48:34 sthen Exp $

COMMENT=	DNS ping

DISTNAME=	nsping-0.8
REVISION=	0
DISTFILES=	nsping.tar.gz
CATEGORIES=	net

MASTER_SITES=	https://www.distfiles.pl/

PERMIT_PACKAGE=	Yes

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}"

NO_TEST=	Yes

pre-build:
	@perl -pi -e s,dprintf,debugprintf, ${WRKSRC}/nsping.*

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nsping ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/nsping.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
