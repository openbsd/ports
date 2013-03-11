# $OpenBSD: Makefile,v 1.13 2013/03/11 01:30:28 espie Exp $

COMMENT=	stringprep profile for Internationalized Domain Names

DISTNAME=	Net-IDN-Nameprep-1.101
CATEGORIES=	converters net

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=	converters/p5-Unicode-Stringprep
TEST_DEPENDS=	devel/p5-Test-NoWarnings

.include <bsd.port.mk>
