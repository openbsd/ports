# $OpenBSD: Makefile,v 1.19 2020/07/03 21:45:16 sthen Exp $

COMMENT=	tools to test taintedness

MODULES=	cpan
DISTNAME=	Test-Taint-1.08
CATEGORIES=	devel
REVISION=	0

# Artistic
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
