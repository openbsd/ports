# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:38 naddy Exp $

COMMENT=	tools to test taintedness

MODULES=	cpan
DISTNAME=	Test-Taint-1.06
CATEGORIES=	devel
REVISION=	1

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
