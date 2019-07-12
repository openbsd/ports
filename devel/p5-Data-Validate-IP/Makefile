# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:50 sthen Exp $

COMMENT =	ipv4 and ipv6 validation methods

DISTNAME =	Data-Validate-IP-0.27

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Test-Requires
RUN_DEPENDS =		net/p5-NetAddr-IP>=4
TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-Test-Taint

PKG_ARCH =		*

.include <bsd.port.mk>
