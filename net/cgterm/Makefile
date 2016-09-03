# $OpenBSD: Makefile,v 1.1.1.1 2016/09/03 10:35:10 fcambus Exp $

COMMENT =	C/G telnet client for C64 BBSes

DISTNAME =	cgterm-1.6

CATEGORIES =	net

HOMEPAGE =	https://paradroid.automac.se/cgterm/

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL c pthread

MASTER_SITES =	${HOMEPAGE}

LIB_DEPENDS =	devel/sdl

USE_GMAKE =	Yes

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cgterm
	${INSTALL_DATA} ${WRKSRC}/cg*.txt ${PREFIX}/share/doc/cgterm

.include <bsd.port.mk>
