# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:45 espie Exp $

COMMENT = 		screen scraping Perl API to some Drupal admin functions

DISTNAME =		Drupal-Admin-0.04
REVISION =		1
CATEGORIES =		www devel
MODULES =		cpan
USE_GROFF =		Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-WWW-Mechanize-TreeBuilder \
			devel/p5-MooseX-Role-Parameterized \
			devel/p5-MooseX-Log-Log4perl \
			devel/p5-Class-MOP

BUILD_DEPENDS =		${RUN_DEPENDS}

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
