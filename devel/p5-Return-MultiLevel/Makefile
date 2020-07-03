# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:07 sthen Exp $

COMMENT =		return across multiple call levels

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Return-MultiLevel-0.05
CATEGORIES =		devel
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		MAUKE

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-Data-Munge

TEST_DEPENDS =		devel/p5-Test-Fatal

.include <bsd.port.mk>
