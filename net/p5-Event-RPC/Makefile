# $OpenBSD: Makefile,v 1.12 2015/09/22 06:55:00 benoit Exp $

COMMENT =	Event based transparent Client/Server RPC framework

MODULES =	cpan
DISTNAME =	Event-RPC-1.07
CATEGORIES =	net devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Event \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
