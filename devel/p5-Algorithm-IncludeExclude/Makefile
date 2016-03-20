# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:12 naddy Exp $

COMMENT =	build and evaluate include/exclude lists

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Algorithm-IncludeExclude-0.01
REVISION =	1
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

# test dependency that gets pulled in by Module::Install at build time
BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
