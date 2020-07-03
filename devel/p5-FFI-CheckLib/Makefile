# $OpenBSD: Makefile,v 1.5 2020/07/03 21:44:52 sthen Exp $

COMMENT =	check that a library is available for FFI

DISTNAME =	FFI-CheckLib-0.27
REVISION =	0

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Exit \
			devel/p5-Test2-Suite>=0.000060

PKG_ARCH =		*

.include <bsd.port.mk>
