# $OpenBSD: Makefile,v 1.4 2018/06/30 08:13:30 benoit Exp $

COMMENT =	check validity of IPv6 addresses

DISTNAME =	Net-IPv6Addr-0.91
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
