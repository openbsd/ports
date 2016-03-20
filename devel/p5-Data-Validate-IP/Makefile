# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:18 naddy Exp $

COMMENT =		ipv4 and ipv6 validation methods

DISTNAME =		Data-Validate-IP-0.25

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		devel/p5-Test-Requires
RUN_DEPENDS =		net/p5-NetAddr-IP>=4
TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-Test-Taint

.include <bsd.port.mk>
