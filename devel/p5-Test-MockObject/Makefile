# $OpenBSD: Makefile,v 1.8 2010/10/18 17:48:08 espie Exp $

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

RUN_DEPENDS=		::devel/p5-Universal-isa \
			::devel/p5-Universal-can

REGRESS_DEPENDS=	::devel/p5-Test-Exception

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
