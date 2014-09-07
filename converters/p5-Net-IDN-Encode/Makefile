# $OpenBSD: Makefile,v 1.11 2014/09/07 10:59:42 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Internationalizing Domain Names in Applications

# newer revs want Module::Build >=0.42
DISTNAME=	Net-IDN-Encode-2.005
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
