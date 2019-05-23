# $OpenBSD: Makefile,v 1.1.1.1 2019/05/23 17:47:50 bluhm Exp $

COMMENT =	check that a library is available for FFI

DISTNAME =	FFI-CheckLib-0.24

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Exit \
			devel/p5-Test2-Suite>=0.000060

PKG_ARCH =		*

.include <bsd.port.mk>
