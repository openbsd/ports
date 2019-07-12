# $OpenBSD: Makefile,v 1.17 2019/07/12 20:45:11 sthen Exp $

COMMENT=	tools to test taintedness

MODULES=	cpan
DISTNAME=	Test-Taint-1.06
CATEGORIES=	devel
REVISION=	1

# Artistic
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
