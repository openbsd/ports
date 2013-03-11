# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:44 espie Exp $

COMMENT =	log Perl warnings to your Catalyst log object

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-LogWarnings-0.03
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
