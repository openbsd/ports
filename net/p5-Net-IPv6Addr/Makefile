# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:53 naddy Exp $

COMMENT =	check validity of IPv6 addresses

DISTNAME =	Net-IPv6Addr-0.2
CATEGORIES =	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		math/p5-Math-Base85 \
			net/p5-Net-IPv4Addr

.include <bsd.port.mk>
