# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:51 naddy Exp $

COMMENT =		object interface for AF_INET and AF_INET6 domain sockets

DISTNAME =		IO-Socket-INET6-2.72

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/p5-Socket6>=0.12
TEST_DEPENDS =		devel/p5-Test-Pod-Coverage devel/p5-Test-Pod

.include <bsd.port.mk>
