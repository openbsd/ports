# $OpenBSD: Makefile,v 1.21 2017/04/05 12:41:34 bluhm Exp $

COMMENT =	provide commonly requested regular expressions

DISTNAME =	Regexp-Common-2017040401

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic, Artistic 2.0, BSD, MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		devel/p5-Test-Regexp

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
