# $OpenBSD: Makefile,v 1.13 2013/10/11 23:49:22 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	tools to test taintedness

MODULES=	cpan
DISTNAME=	Test-Taint-1.06
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
