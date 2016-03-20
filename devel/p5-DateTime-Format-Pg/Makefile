# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:19 naddy Exp $

COMMENT =		parse and create PostGresql date objects

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		DateTime-Format-Pg-0.16011
CATEGORIES =		devel converters

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-DateTime-Format-Builder
BUILD_DEPENDS =		${RUN_DEPENDS}
MAKE_ENV =		TEST_POD=Yes

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>	
