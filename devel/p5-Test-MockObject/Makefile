# $OpenBSD: Makefile,v 1.9 2010/11/15 19:46:06 espie Exp $

COMMENT= 	perl extension for emulating troublesome interfaces

MODULES=	cpan
DISTNAME=	Test-MockObject-1.09
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/p5-Universal-isa \
			devel/p5-Universal-can

REGRESS_DEPENDS=	devel/p5-Test-Exception

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
