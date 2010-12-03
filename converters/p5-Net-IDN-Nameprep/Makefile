# $OpenBSD: Makefile,v 1.11 2010/12/03 11:44:23 ajacoutot Exp $

COMMENT=	stringprep profile for Internationalized Domain Names

DISTNAME=	Net-IDN-Nameprep-1.100
REVISION=	0
CATEGORIES=	converters net

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild
USE_GROFF =	Yes

RUN_DEPENDS=	converters/p5-Unicode-Stringprep
REGRESS_DEPENDS=devel/p5-Test-NoWarnings

.include <bsd.port.mk>
