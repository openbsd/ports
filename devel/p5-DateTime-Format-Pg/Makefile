# $OpenBSD: Makefile,v 1.15 2017/05/09 08:00:58 benoit Exp $

COMMENT =		parse and create PostGresql date objects

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		DateTime-Format-Pg-0.16013
CATEGORIES =		devel converters

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-DateTime-Format-Builder
BUILD_DEPENDS =		${RUN_DEPENDS}
MAKE_ENV =		TEST_POD=Yes

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>	
