# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:36 sthen Exp $

COMMENT =	straightforward Perl WebSocket server

DISTNAME =	Net-WebSocket-Server-0.003004
CATEGORIES =	net
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	net/p5-Protocol-WebSocket

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
