# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:57 sthen Exp $

COMMENT=	simple interface to access shared memory

MODULES=	cpan
DISTNAME=	IPC-ShareLite-0.17
REVISION=	5
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
