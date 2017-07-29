# $OpenBSD: Makefile,v 1.22 2017/07/29 20:35:01 bluhm Exp $

COMMENT =	provide commonly requested regular expressions

DISTNAME =	Regexp-Common-2017060201

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic, Artistic 2.0, BSD, MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		devel/p5-Test-Regexp

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
