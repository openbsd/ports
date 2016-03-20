# $OpenBSD: Makefile,v 1.19 2016/03/20 19:56:26 naddy Exp $

COMMENT=	simple interface to access shared memory

MODULES=	cpan
DISTNAME=	IPC-ShareLite-0.17
REVISION=	4
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
