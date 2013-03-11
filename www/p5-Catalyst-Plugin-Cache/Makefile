# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:44 espie Exp $

COMMENT =	flexible caching support for Catalyst

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Cache-0.10
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl/MIT
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =		devel/p5-Test-Weaken
RUN_DEPENDS =		devel/p5-MRO-Compat \
			www/p5-Catalyst-Runtime
TEST_DEPENDS =	devel/p5-Test-Exception \
			devel/p5-Test-Deep

.include <bsd.port.mk>
