# $OpenBSD: Makefile,v 1.8 2015/11/05 19:08:56 jca Exp $

COMMENT =	JSON view for your data

MODULES =	cpan
DISTNAME =	Catalyst-View-JSON-0.33
REVISION =	1
CATEGORIES =	converters www

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	converters/p5-JSON-Any \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime
TEST_DEPENDS =	devel/p5-YAML

.include <bsd.port.mk>
