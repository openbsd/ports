# $OpenBSD: Makefile,v 1.9 2016/11/18 14:12:40 bluhm Exp $

COMMENT =	ipv4 and ipv6 validation methods

DISTNAME =	Data-Validate-IP-0.27

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Test-Requires
RUN_DEPENDS =		net/p5-NetAddr-IP>=4
TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-Test-Taint

PKG_ARCH =		*

.include <bsd.port.mk>
