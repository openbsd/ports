# $OpenBSD: Makefile,v 1.11 2015/01/21 14:27:57 sthen Exp $

COMMENT=		parse and create PostGresql date objects

MODULES=		cpan
DISTNAME=		DateTime-Format-Pg-0.16005
CATEGORIES=		devel converters

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=		devel/p5-DateTime-Format-Builder
BUILD_DEPENDS=		${RUN_DEPENDS}
MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>	
