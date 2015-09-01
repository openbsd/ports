# $OpenBSD: Makefile,v 1.24 2015/09/01 06:37:16 benoit Exp $

SHARED_ONLY =	Yes
COMMENT =	extension for generating GUIDs/UUIDs

MODULES =	cpan
DISTNAME =	Data-UUID-1.221
CATEGORIES =	devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MAKE_ENV =	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
