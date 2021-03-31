# $OpenBSD: Makefile,v 1.9 2021/03/31 06:19:56 benoit Exp $

COMMENT =	check validity of IPv6 addresses

DISTNAME =	Net-IPv6Addr-1.02
CATEGORIES =	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		math/p5-Math-Base85

.include <bsd.port.mk>
