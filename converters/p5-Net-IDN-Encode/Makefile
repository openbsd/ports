# $OpenBSD: Makefile,v 1.12 2015/04/12 07:58:38 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Internationalizing Domain Names in Applications

DISTNAME=	Net-IDN-Encode-2.201
CATEGORIES=	net converters

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES=		cpan

CPAN_AUTHOR=		CFAERBER

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=	converters/p5-Net-IDN-Nameprep>=1.100
TEST_DEPENDS=	devel/p5-Test-NoWarnings

.include <bsd.port.mk>
