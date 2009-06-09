# $OpenBSD: Makefile,v 1.10 2009/06/09 15:46:17 dhill Exp $

SHARED_ONLY=	Yes

COMMENT=	simple interface to access shared memory

MODULES=	cpan
DISTNAME=	IPC-ShareLite-0.17
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
