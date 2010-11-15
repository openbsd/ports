# $OpenBSD: Makefile,v 1.11 2010/11/15 19:46:06 espie Exp $

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
RUN_DEPENDS=	devel/p5-Devel-Cycle

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
