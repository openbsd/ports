# $OpenBSD: Makefile,v 1.1.1.1 2010/09/16 07:25:00 jasper Exp $

COMMENT=	preparation of internationalized strings

DISTNAME=	Unicode-Stringprep-1.103
CATEGORIES=	converters

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

REGRESS_DEPENDS=::devel/p5-Test-NoWarnings

.include <bsd.port.mk>
