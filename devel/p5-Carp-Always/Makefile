# $OpenBSD: Makefile,v 1.8 2020/02/12 14:07:15 benoit Exp $

COMMENT =		turn every die/warn into carp verbose messages

DISTNAME =		Carp-Always-0.16
CATEGORIES =		devel

MODULES =		cpan
PKG_ARCH =		*

# perl
PERMIT_PACKAGE =	Yes

MAKE_ENV =		TEST_POD=Yes AUTHOR_TESTING=Yes

TEST_DEPENDS =		devel/p5-Test-Base

.include <bsd.port.mk>
