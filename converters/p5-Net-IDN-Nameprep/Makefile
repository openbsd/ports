# $OpenBSD: Makefile,v 1.8 2010/09/16 07:27:38 jasper Exp $

COMMENT=	stringprep profile for Internationalized Domain Names

DISTNAME=	Net-IDN-Nameprep-1.100
CATEGORIES=	converters net

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=	::converters/p5-Unicode-Stringprep
REGRESS_DEPENDS=::devel/p5-Test-NoWarnings

.include <bsd.port.mk>
