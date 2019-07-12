# $OpenBSD: Makefile,v 1.18 2019/07/12 20:47:00 sthen Exp $

COMMENT=	graphic counter language compiler/interpreter

DISTNAME=	gracula-3.0
CATEGORIES=	graphics
REVISION =	0

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.whizkidtech.redprince.net/gcl/

PERMIT_PACKAGE=	Yes
WANTLIB=		c m

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gracula ${PREFIX}/bin
	$(INSTALL_PROGRAM) ${WRKSRC}/sec2000 ${PREFIX}/bin

.include <bsd.port.mk>
