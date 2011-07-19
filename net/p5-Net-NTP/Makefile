# $OpenBSD: Makefile,v 1.2 2011/07/19 20:03:26 gsoares Exp $

COMMENT =	Perl extension for decoding NTP server responses

DISTNAME =	Net-NTP-1.3
CATEGORIES =	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

RUN_DEPENDS =	net/p5-IO-Socket-INET6

# requires access to pool.ntp.org
REGRESS_IS_INTERACTIVE =Yes

.include <bsd.port.mk>
