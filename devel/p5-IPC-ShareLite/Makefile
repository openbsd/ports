# $OpenBSD: Makefile,v 1.18 2015/07/16 23:57:22 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	simple interface to access shared memory

MODULES=	cpan
DISTNAME=	IPC-ShareLite-0.17
REVISION=	4
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
