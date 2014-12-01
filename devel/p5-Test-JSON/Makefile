# $OpenBSD: Makefile,v 1.7 2014/12/01 13:33:14 benoit Exp $

COMMENT =	test JSON data

MODULES =	cpan
DISTNAME =	Test-JSON-0.11
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		converters/p5-JSON-Any \
			devel/p5-Test-Differences \
			devel/p5-Test-Tester

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
