# $OpenBSD: Makefile,v 1.3 2014/01/11 14:05:19 bluhm Exp $

COMMENT =		ipv4 and ipv6 validation methods

DISTNAME =		Data-Validate-IP-0.22

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Test-Requires
RUN_DEPENDS =		net/p5-NetAddr-IP
TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-Test-Taint

.include <bsd.port.mk>
