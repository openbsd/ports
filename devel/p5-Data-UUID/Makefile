# $OpenBSD: Makefile,v 1.27 2020/02/15 21:40:42 benoit Exp $

COMMENT =	extension for generating GUIDs/UUIDs

MODULES =	cpan
DISTNAME =	Data-UUID-1.224
CATEGORIES =	devel

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MAKE_ENV =	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
