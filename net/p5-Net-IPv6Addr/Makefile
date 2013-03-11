# $OpenBSD: Makefile,v 1.2 2013/03/11 11:35:53 espie Exp $

COMMENT =	check validity of IPv6 addresses

DISTNAME =	Net-IPv6Addr-0.2
CATEGORIES =	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		math/p5-Math-Base85 \
			net/p5-Net-IPv4Addr

.include <bsd.port.mk>
