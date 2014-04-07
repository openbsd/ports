# $OpenBSD: Makefile,v 1.7 2014/04/07 14:51:25 sthen Exp $

COMMENT =	JSON view for your data

MODULES =	cpan
DISTNAME =	Catalyst-View-JSON-0.33
REVISION =	0
CATEGORIES =	converters www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	converters/p5-JSON-Any \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime
TEST_DEPENDS =	devel/p5-YAML

.include <bsd.port.mk>
