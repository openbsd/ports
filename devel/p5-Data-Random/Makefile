# $OpenBSD: Makefile,v 1.20 2019/07/12 20:44:49 sthen Exp $

COMMENT =	perl module to generate random data

DISTNAME =	Data-Random-0.13

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-File-ShareDir-Install>=0.06
TEST_DEPENDS =		devel/p5-Test-MockTime \
			graphics/p5-GD

PKG_ARCH =		*

.include <bsd.port.mk>
