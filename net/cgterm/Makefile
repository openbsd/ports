# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:24 sthen Exp $

COMMENT =	C/G telnet client for C64 BBSes

DISTNAME =	cgterm-1.6
REVISION =	0

CATEGORIES =	net

HOMEPAGE =	https://paradroid.automac.se/cgterm/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	SDL c pthread

MASTER_SITES =	${HOMEPAGE}

LIB_DEPENDS =	devel/sdl

USE_GMAKE =	Yes

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cgterm
	${INSTALL_DATA} ${WRKSRC}/cg*.txt ${PREFIX}/share/doc/cgterm

.include <bsd.port.mk>
