# $OpenBSD: Makefile,v 1.14 2013/07/05 01:33:13 bluhm Exp $

COMMENT =		object interface for AF_INET and AF_INET6 domain sockets

DISTNAME =		IO-Socket-INET6-2.71

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/p5-Socket6>=0.12
TEST_DEPENDS =		devel/p5-Test-Pod-Coverage devel/p5-Test-Pod

.include <bsd.port.mk>
