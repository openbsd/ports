# $OpenBSD: Makefile,v 1.28 2020/04/15 20:51:10 sthen Exp $

COMMENT =	extension for generating GUIDs/UUIDs

MODULES =	cpan
DISTNAME =	Data-UUID-1.226
CATEGORIES =	devel

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MAKE_ENV =	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
