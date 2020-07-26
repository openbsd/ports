# $OpenBSD: Makefile,v 1.8 2020/07/26 06:57:46 benoit Exp $

COMMENT =	check validity of IPv6 addresses

DISTNAME =	Net-IPv6Addr-1.01
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
