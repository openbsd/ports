# $OpenBSD: Makefile,v 1.2 2019/07/12 20:45:09 sthen Exp $

COMMENT =		check whether Perl files compile correctly
DISTNAME =		Test-Compile-v1.3.0
PKGNAME =		p5-${DISTNAME:S/v//g}
CATEGORIES =		devel

MAINTAINER =		Charlene Wendling <cwen@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		devel/p5-Universal-require \
			devel/p5-Devel-CheckOS
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		devel/p5-Perl-Critic \
			devel/p5-Test-Perl-Critic \
			devel/p5-Test-Portability-Files \
			devel/p5-Test-Warnings

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		AUTHOR_TEST=Yes TEST_POD=Yes

.include <bsd.port.mk>
