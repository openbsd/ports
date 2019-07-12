# $OpenBSD: Makefile,v 1.23 2019/07/12 20:50:05 sthen Exp $

COMMENT =	provide commonly requested regular expressions

DISTNAME =	Regexp-Common-2017060201

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic, Artistic 2.0, BSD, MIT
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		devel/p5-Test-Regexp

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
