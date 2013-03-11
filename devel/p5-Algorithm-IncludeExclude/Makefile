# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:12 espie Exp $

COMMENT =	build and evaluate include/exclude lists

MODULES =	cpan
DISTNAME =	Algorithm-IncludeExclude-0.01
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

# test dependency that gets pulled in by Module::Install at build time
BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
