# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:38 sthen Exp $

COMMENT =	Perl extension for decoding NTP server responses

DISTNAME =	Net-NTP-1.5
CATEGORIES =	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =	net/p5-IO-Socket-INET6

# requires access to pool.ntp.org
TEST_IS_INTERACTIVE =Yes

.include <bsd.port.mk>
