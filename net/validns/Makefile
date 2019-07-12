# $OpenBSD: Makefile,v 1.2 2019/07/12 20:48:51 sthen Exp $

COMMENT =	DNS and DNSSEC zone file validator

DISTNAME =	validns-0.8

CATEGORIES =	net

HOMEPAGE =	http://www.validns.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	Judy c crypto pthread

MASTER_SITES =	${HOMEPAGE}download/

LIB_DEPENDS =	devel/libJudy

TEST_DEPENDS =	devel/p5-Test-Command-Simple

MAKE_ENV =	CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET =	validns

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/validns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/validns.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
