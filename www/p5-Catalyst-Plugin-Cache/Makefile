# $OpenBSD: Makefile,v 1.5 2012/04/08 21:58:18 sthen Exp $

COMMENT =	flexible caching support for Catalyst

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Cache-0.10
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl/MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

BUILD_DEPENDS =		devel/p5-Test-Weaken
RUN_DEPENDS =		devel/p5-MRO-Compat \
			www/p5-Catalyst-Runtime
REGRESS_DEPENDS =	devel/p5-Test-Exception \
			devel/p5-Test-Deep

.include <bsd.port.mk>
