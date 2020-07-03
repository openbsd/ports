# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:46 sthen Exp $

COMMENT =	perl module to generate random data

DISTNAME =	Data-Random-0.13
REVISION =	0

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
