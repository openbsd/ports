# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:22 espie Exp $

COMMENT =	test JSON data

MODULES =	cpan
DISTNAME =	Test-JSON-0.06
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		converters/p5-JSON-Any \
			devel/p5-Test-Differences \
			devel/p5-Test-Tester

CONFIGURE_STYLE =	modbuild
USE_GROFF =		Yes

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
