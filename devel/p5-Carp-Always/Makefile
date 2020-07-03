# $OpenBSD: Makefile,v 1.9 2020/07/03 21:44:41 sthen Exp $

COMMENT =		turn every die/warn into carp verbose messages

DISTNAME =		Carp-Always-0.16
CATEGORIES =		devel
REVISION =		0

MODULES =		cpan
PKG_ARCH =		*

# perl
PERMIT_PACKAGE =	Yes

MAKE_ENV =		TEST_POD=Yes AUTHOR_TESTING=Yes

TEST_DEPENDS =		devel/p5-Test-Base

.include <bsd.port.mk>
