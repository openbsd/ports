# $OpenBSD: Makefile,v 1.5 2013/02/02 17:38:43 jasper Exp $

COMMENT=	preparation of internationalized strings

DISTNAME=	Unicode-Stringprep-1.104
CATEGORIES=	converters

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild
USE_GROFF =		Yes

REGRESS_DEPENDS=devel/p5-Test-NoWarnings

.include <bsd.port.mk>
