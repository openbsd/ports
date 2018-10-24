# $OpenBSD: Makefile,v 1.20 2018/10/24 21:27:03 afresh1 Exp $

COMMENT =	extremely flexible deep comparison

DISTNAME =	Test-Deep-1.128
CATEGORIES =	devel
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

# Avoid skipping tests
TEST_ENV =		AUTHOR_TESTING=Yes
TEST_DEPENDS +=	devel/p5-Test-Warnings

.include <bsd.port.mk>
