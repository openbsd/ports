# $OpenBSD: Makefile,v 1.9 2015/11/09 13:47:09 benoit Exp $

COMMENT =	JSON view for your data

MODULES =	cpan
DISTNAME =	Catalyst-View-JSON-0.35
CATEGORIES =	converters www

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	converters/p5-JSON-MaybeXS \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime
TEST_DEPENDS =	devel/p5-YAML

.include <bsd.port.mk>
