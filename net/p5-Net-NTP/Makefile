# $OpenBSD: Makefile,v 1.4 2015/01/05 17:10:46 benoit Exp $

COMMENT =	Perl extension for decoding NTP server responses

DISTNAME =	Net-NTP-1.4
CATEGORIES =	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =	net/p5-IO-Socket-INET6

# requires access to pool.ntp.org
TEST_IS_INTERACTIVE =Yes

.include <bsd.port.mk>
