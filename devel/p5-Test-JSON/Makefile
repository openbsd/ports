# $OpenBSD: Makefile,v 1.1.1.1 2008/09/09 21:14:23 simon Exp $

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

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
