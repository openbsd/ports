# $OpenBSD: Makefile,v 1.5 2015/09/07 05:29:58 benoit Exp $

COMMENT =	Perl extension for decoding NTP server responses

DISTNAME =	Net-NTP-1.5
CATEGORIES =	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =	net/p5-IO-Socket-INET6

# requires access to pool.ntp.org
TEST_IS_INTERACTIVE =Yes

.include <bsd.port.mk>
