# $OpenBSD: Makefile,v 1.16 2013/10/11 23:48:54 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	simple interface to access shared memory

MODULES=	cpan
DISTNAME=	IPC-ShareLite-0.17
REVISION=	2
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
