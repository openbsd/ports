# $OpenBSD: Makefile,v 1.1.1.1 2020/08/19 14:06:51 cwen Exp $

COMMENT =	automated REST Method Dispatching

DISTNAME =	Catalyst-Action-REST-1.21

CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		www/p5-Catalyst-Runtime>=5.80030 \
			devel/p5-Class-Inspector>=1.13 \
			converters/p5-JSON-MaybeXS \
			devel/p5-MRO-Compat>=0.10 \
			devel/p5-Module-Pluggable \
			devel/p5-Moose>=1.03 \
			devel/p5-Params-Validate>=0.76 \
			www/p5-URI-Find \
			devel/p5-namespace-autoclean
TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-YAML-Syck \
			www/p5-libwww>=5.0

PKG_ARCH =		*

MAKE_ENV +=		TEST_POD=yes AUTHOR_TESTING=yes

.include <bsd.port.mk>
