# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:12 sthen Exp $

COMMENT =		check whether Perl files compile correctly
DISTNAME =		Test-Compile-v2.4.0
PKGNAME =		p5-${DISTNAME:S/v//g}
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Charlene Wendling <cwen@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		devel/p5-Universal-require \
			devel/p5-Devel-CheckOS
TEST_DEPENDS =		devel/p5-Perl-Critic \
			devel/p5-Test-Exception \
			devel/p5-Test-HasVersion \
			devel/p5-Test-Perl-Critic \
			devel/p5-Test-Portability-Files \
			devel/p5-Test-Warnings

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		AUTHOR_TEST=Yes TEST_POD=Yes

.include <bsd.port.mk>
