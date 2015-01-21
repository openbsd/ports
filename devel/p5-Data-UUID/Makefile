# $OpenBSD: Makefile,v 1.22 2015/01/21 06:13:47 bentley Exp $

SHARED_ONLY=	Yes
COMMENT=	extension for generating GUIDs/UUIDs

MODULES=	cpan
DISTNAME=	Data-UUID-1.217
REVISION=	2
CATEGORIES=	devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV=	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
