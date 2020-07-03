# $OpenBSD: Makefile,v 1.22 2020/07/03 21:45:12 sthen Exp $

COMMENT =	extremely flexible deep comparison

DISTNAME =	Test-Deep-1.128
CATEGORIES =	devel
MODULES =	cpan
PKG_ARCH =	*
REVISION =	0

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

# Avoid skipping tests
TEST_ENV =		AUTHOR_TESTING=Yes
TEST_DEPENDS +=	devel/p5-Test-Warnings

.include <bsd.port.mk>
