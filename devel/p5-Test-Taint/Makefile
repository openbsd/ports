# $OpenBSD: Makefile,v 1.12 2013/03/09 15:20:01 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	tools to test taintedness

MODULES=	cpan
DISTNAME=	Test-Taint-1.06
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
