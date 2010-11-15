# $OpenBSD: Makefile,v 1.3 2010/11/15 19:46:01 espie Exp $

COMMENT =	build and evaluate include/exclude lists

MODULES =	cpan
DISTNAME =	Algorithm-IncludeExclude-0.01
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

# regress dependency that gets pulled in by Module::Install at build time
BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
