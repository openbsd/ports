# $OpenBSD: Makefile,v 1.13 2015/08/16 09:18:56 benoit Exp $

COMMENT =		parse and create PostGresql date objects

MODULES =		cpan
DISTNAME =		DateTime-Format-Pg-0.16011
CATEGORIES =		devel converters

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-DateTime-Format-Builder
BUILD_DEPENDS =		${RUN_DEPENDS}
MAKE_ENV =		TEST_POD=Yes

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>	
