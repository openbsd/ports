# $OpenBSD: Makefile,v 1.13 2015/09/28 09:15:52 benoit Exp $

COMMENT =	Event based transparent Client/Server RPC framework

MODULES =	cpan
DISTNAME =	Event-RPC-1.08
CATEGORIES =	net devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Event \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
