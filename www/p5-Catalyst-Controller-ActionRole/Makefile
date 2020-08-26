# $OpenBSD: Makefile,v 1.1.1.1 2020/08/26 02:01:08 afresh1 Exp $

COMMENT =	apply roles to action instances

DISTNAME =	Catalyst-Controller-ActionRole-0.17

CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Class-Load \
			devel/p5-Moose \
			devel/p5-MooseX-Types \
			devel/p5-namespace-autoclean \
			textproc/p5-String-RewritePrefix>=0.004 \
			www/p5-Catalyst-Runtime>=5.80025
TEST_DEPENDS =		www/p5-Catalyst-Action-REST>=0.74 \
			devel/p5-namespace-clean

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
