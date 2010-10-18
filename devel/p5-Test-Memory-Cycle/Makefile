# $OpenBSD: Makefile,v 1.10 2010/10/18 17:48:08 espie Exp $

COMMENT= 	perl extension for emulating troublesome interfaces

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Test-Memory-Cycle-1.04
REVISION=	0
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Cycle

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
