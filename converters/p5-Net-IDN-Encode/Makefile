# $OpenBSD: Makefile,v 1.8 2013/02/02 17:29:14 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Internationalizing Domain Names in Applications

DISTNAME=	Net-IDN-Encode-1.102
CATEGORIES=	net converters

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c

MODULES=		cpan

CPAN_AUTHOR=		CFAERBER

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=	converters/p5-Net-IDN-Nameprep>=1.100
REGRESS_DEPENDS=devel/p5-Test-NoWarnings

.include <bsd.port.mk>
