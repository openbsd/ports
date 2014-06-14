# $OpenBSD: Makefile,v 1.17 2014/06/14 23:24:57 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	simple interface to access shared memory

MODULES=	cpan
DISTNAME=	IPC-ShareLite-0.17
REVISION=	3
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
