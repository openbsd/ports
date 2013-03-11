# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:18 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	simple interface to access shared memory

MODULES=	cpan
DISTNAME=	IPC-ShareLite-0.17
REVISION=	2
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
