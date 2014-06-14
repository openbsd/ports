# $OpenBSD: Makefile,v 1.10 2014/06/14 23:23:12 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Internationalizing Domain Names in Applications

DISTNAME=	Net-IDN-Encode-1.102
CATEGORIES=	net converters
REVISION=	0

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES=		cpan

CPAN_AUTHOR=		CFAERBER

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=	converters/p5-Net-IDN-Nameprep>=1.100
TEST_DEPENDS=	devel/p5-Test-NoWarnings

.include <bsd.port.mk>
