# $OpenBSD: Makefile,v 1.21 2014/06/14 23:24:55 sthen Exp $

SHARED_ONLY=	Yes
COMMENT=	extension for generating GUIDs/UUIDs

MODULES=	cpan
DISTNAME=	Data-UUID-1.217
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV=	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
