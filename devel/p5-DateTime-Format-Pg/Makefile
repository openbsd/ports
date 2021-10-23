# $OpenBSD: Makefile,v 1.18 2021/10/20 05:37:22 benoit Exp $

COMMENT =		parse and create PostGresql date objects

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		DateTime-Format-Pg-0.16014
CATEGORIES =		devel converters

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-DateTime-Format-Builder
BUILD_DEPENDS =		${RUN_DEPENDS}
MAKE_ENV =		TEST_POD=Yes

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>	
