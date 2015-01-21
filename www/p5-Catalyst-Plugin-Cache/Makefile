# $OpenBSD: Makefile,v 1.7 2015/01/21 14:42:33 sthen Exp $

COMMENT =	flexible caching support for Catalyst

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Cache-0.10
CATEGORIES =	www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl/MIT
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =		devel/p5-Test-Weaken
RUN_DEPENDS =		devel/p5-MRO-Compat \
			www/p5-Catalyst-Runtime
TEST_DEPENDS =	devel/p5-Test-Exception \
			devel/p5-Test-Deep

.include <bsd.port.mk>
