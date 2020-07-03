# $OpenBSD: Makefile,v 1.24 2020/07/03 21:45:48 sthen Exp $

COMMENT =	provide commonly requested regular expressions

DISTNAME =	Regexp-Common-2017060201
REVISION =	0

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic, Artistic 2.0, BSD, MIT
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		devel/p5-Test-Regexp

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
