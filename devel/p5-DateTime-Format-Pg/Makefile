# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:15 espie Exp $

COMMENT=		parse and create PostGresql date objects

MODULES=		cpan
DISTNAME=		DateTime-Format-Pg-0.16005
CATEGORIES=		devel converters
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=		devel/p5-DateTime-Format-Builder
BUILD_DEPENDS=		${RUN_DEPENDS}
MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>	
