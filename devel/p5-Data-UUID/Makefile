# $OpenBSD: Makefile,v 1.25 2016/03/20 19:56:18 naddy Exp $

COMMENT =	extension for generating GUIDs/UUIDs

MODULES =	cpan
DISTNAME =	Data-UUID-1.221
CATEGORIES =	devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MAKE_ENV =	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
