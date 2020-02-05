# $OpenBSD: Makefile,v 1.5 2020/02/05 15:45:05 benoit Exp $

COMMENT =		return across multiple call levels

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Return-MultiLevel-0.05
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		MAUKE

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-Data-Munge

TEST_DEPENDS =		devel/p5-Test-Fatal

.include <bsd.port.mk>
