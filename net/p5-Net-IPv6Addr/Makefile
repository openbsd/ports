# $OpenBSD: Makefile,v 1.6 2020/01/09 10:24:16 benoit Exp $

COMMENT =	check validity of IPv6 addresses

DISTNAME =	Net-IPv6Addr-0.96
CATEGORIES =	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		math/p5-Math-Base85 \
			net/p5-Net-IPv4Addr

.include <bsd.port.mk>
