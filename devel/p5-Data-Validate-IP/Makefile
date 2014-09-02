# $OpenBSD: Makefile,v 1.5 2014/09/02 22:59:37 bluhm Exp $

COMMENT =		ipv4 and ipv6 validation methods

DISTNAME =		Data-Validate-IP-0.24

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Test-Requires
RUN_DEPENDS =		net/p5-NetAddr-IP>=4
TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-Test-Taint

.include <bsd.port.mk>
