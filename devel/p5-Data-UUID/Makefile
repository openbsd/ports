# $OpenBSD: Makefile,v 1.23 2015/07/16 23:57:21 ajacoutot Exp $

SHARED_ONLY=	Yes
COMMENT=	extension for generating GUIDs/UUIDs

MODULES=	cpan
DISTNAME=	Data-UUID-1.217
REVISION=	3
CATEGORIES=	devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV=	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
