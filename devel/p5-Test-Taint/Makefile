# $OpenBSD: Makefile,v 1.14 2014/06/14 23:24:59 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	tools to test taintedness

MODULES=	cpan
DISTNAME=	Test-Taint-1.06
CATEGORIES=	devel
REVISION=	0

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
