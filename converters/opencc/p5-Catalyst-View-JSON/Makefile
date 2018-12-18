# $OpenBSD: Makefile,v 1.1.1.1 2018/12/18 09:20:19 bentley Exp $

COMMENT =	JSON view for your data

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-View-JSON-0.36
CATEGORIES =	converters www

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	converters/p5-JSON-MaybeXS \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime
TEST_DEPENDS =	devel/p5-YAML

.include <bsd.port.mk>
