# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:59 sthen Exp $

COMMENT = 		screen scraping Perl API to some Drupal admin functions

DISTNAME =		Drupal-Admin-0.04
REVISION =		3
CATEGORIES =		www devel
MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-WWW-Mechanize-TreeBuilder \
			devel/p5-Moose>=2.1204 \
			devel/p5-MooseX-Role-Parameterized \
			devel/p5-MooseX-Log-Log4perl

BUILD_DEPENDS =		${RUN_DEPENDS}

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
