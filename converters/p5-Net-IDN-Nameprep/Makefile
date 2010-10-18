# $OpenBSD: Makefile,v 1.9 2010/10/18 17:06:06 espie Exp $

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
USE_GROFF =	Yes

RUN_DEPENDS=	::converters/p5-Unicode-Stringprep
REGRESS_DEPENDS=::devel/p5-Test-NoWarnings

.include <bsd.port.mk>
