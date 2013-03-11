# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:22 espie Exp $

COMMENT= 	perl extension for emulating troublesome interfaces

MODULES=	cpan
DISTNAME=	Test-MockObject-1.09
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Universal-isa \
			devel/p5-Universal-can

TEST_DEPENDS=	devel/p5-Test-Exception

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
