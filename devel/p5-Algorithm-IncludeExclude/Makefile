# $OpenBSD: Makefile,v 1.6 2015/01/21 14:27:55 sthen Exp $

COMMENT =	build and evaluate include/exclude lists

MODULES =	cpan
DISTNAME =	Algorithm-IncludeExclude-0.01
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

# test dependency that gets pulled in by Module::Install at build time
BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
