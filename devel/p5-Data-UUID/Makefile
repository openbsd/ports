# $OpenBSD: Makefile,v 1.29 2020/07/03 21:44:47 sthen Exp $

COMMENT =	extension for generating GUIDs/UUIDs

MODULES =	cpan
DISTNAME =	Data-UUID-1.226
CATEGORIES =	devel
REVISION =	0

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MAKE_ENV =	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
