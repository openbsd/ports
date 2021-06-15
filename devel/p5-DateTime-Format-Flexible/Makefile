# $OpenBSD: Makefile,v 1.4 2021/06/15 13:28:53 benoit Exp $

COMMENT =	flexibly parse strings and turn them into DateTime objects

DISTNAME =	DateTime-Format-Flexible-0.33

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-DateTime \
			devel/p5-DateTime-Format-Builder>=0.74 \
			devel/p5-DateTime-TimeZone \
			devel/p5-List-MoreUtils
TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-MockTime \
			devel/p5-Test-NoWarnings

MAKE_ENV=		TEST_POD=Yes

PKG_ARCH =		*

.include <bsd.port.mk>
