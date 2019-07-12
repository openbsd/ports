# $OpenBSD: Makefile,v 1.26 2019/07/12 20:44:50 sthen Exp $

COMMENT =	extension for generating GUIDs/UUIDs

MODULES =	cpan
DISTNAME =	Data-UUID-1.221
CATEGORIES =	devel

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MAKE_ENV =	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
