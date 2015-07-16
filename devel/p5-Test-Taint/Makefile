# $OpenBSD: Makefile,v 1.15 2015/07/16 23:57:24 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	tools to test taintedness

MODULES=	cpan
DISTNAME=	Test-Taint-1.06
CATEGORIES=	devel
REVISION=	1

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
