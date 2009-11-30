# $OpenBSD: Makefile,v 1.1.1.1 2009/11/30 13:26:07 stephan Exp $

COMMENT = 		screen scraping Perl API to some Drupal admin functions

DISTNAME =		Drupal-Admin-0.04
CATEGORIES =		www devel
MODULES =		cpan

MAINTAINER =		Stephan A. Rickauer <stephan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		::www/p5-WWW-Mechanize-TreeBuilder \
			::devel/p5-MooseX-Role-Parameterized \
			::devel/p5-MooseX-Log-Log4perl \
			::devel/p5-Class-MOP

BUILD_DEPENDS =		${RUN_DEPENDS}

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
