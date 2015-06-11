# $OpenBSD: Makefile,v 1.12 2015/06/11 08:45:34 benoit Exp $

COMMENT=		parse and create PostGresql date objects

MODULES=		cpan
DISTNAME =		DateTime-Format-Pg-0.16010
CATEGORIES=		devel converters

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=		devel/p5-DateTime-Format-Builder
BUILD_DEPENDS=		${RUN_DEPENDS}
MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>	
