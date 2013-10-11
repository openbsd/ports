# $OpenBSD: Makefile,v 1.20 2013/10/11 23:48:41 naddy Exp $

SHARED_ONLY=	Yes
COMMENT=	extension for generating GUIDs/UUIDs

MODULES=	cpan
DISTNAME=	Data-UUID-1.217
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV=	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
