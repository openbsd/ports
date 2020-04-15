# $OpenBSD: Makefile,v 1.4 2020/04/15 13:31:42 fcambus Exp $

COMMENT =	C/G telnet client for C64 BBSes

DISTNAME =	cgterm-1.6
REVISION =	1

CATEGORIES =	net

HOMEPAGE =	https://paradroid.automac.se/cgterm/

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
