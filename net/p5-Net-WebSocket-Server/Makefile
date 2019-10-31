# $OpenBSD: Makefile,v 1.1.1.1 2019/10/31 06:15:30 bentley Exp $

COMMENT =	straightforward Perl WebSocket server

DISTNAME =	Net-WebSocket-Server-0.003004
CATEGORIES =	net

# perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	net/p5-Protocol-WebSocket

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
