# $OpenBSD: Makefile,v 1.20 2019/07/12 20:44:58 sthen Exp $

COMMENT=	simple interface to access shared memory

MODULES=	cpan
DISTNAME=	IPC-ShareLite-0.17
REVISION=	4
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
