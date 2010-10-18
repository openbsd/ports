# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:08 espie Exp $

COMMENT =	test JSON data

MODULES =	cpan
DISTNAME =	Test-JSON-0.06
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		::converters/p5-JSON-Any \
			::devel/p5-Test-Differences \
			::devel/p5-Test-Tester

CONFIGURE_STYLE =	modbuild
USE_GROFF =	Yes

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
