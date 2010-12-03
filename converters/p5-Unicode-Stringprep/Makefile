# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:23 ajacoutot Exp $

COMMENT=	preparation of internationalized strings

DISTNAME=	Unicode-Stringprep-1.103
REVISION=	0
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
