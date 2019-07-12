# $OpenBSD: Makefile,v 1.4 2019/07/12 20:45:05 sthen Exp $

COMMENT =		return across multiple call levels

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Return-MultiLevel-0.04
CATEGORIES =		devel
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		MAUKE

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-Data-Munge

TEST_DEPENDS =		devel/p5-Test-Fatal

.include <bsd.port.mk>
