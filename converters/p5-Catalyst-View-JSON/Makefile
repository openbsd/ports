# $OpenBSD: Makefile,v 1.6 2013/03/11 01:30:27 espie Exp $

COMMENT =	JSON view for your data

MODULES =	cpan
USE_GROFF =	Yes
DISTNAME =	Catalyst-View-JSON-0.33
CATEGORIES =	converters www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	converters/p5-JSON-Any \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime
TEST_DEPENDS =	devel/p5-YAML

.include <bsd.port.mk>
