# $OpenBSD: Makefile,v 1.19 2018/04/30 15:20:43 bluhm Exp $

COMMENT =	perl module to generate random data

DISTNAME =	Data-Random-0.13

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-File-ShareDir-Install>=0.06
TEST_DEPENDS =		devel/p5-Test-MockTime \
			graphics/p5-GD

PKG_ARCH =		*

.include <bsd.port.mk>
