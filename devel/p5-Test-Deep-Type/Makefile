# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:09 sthen Exp $

COMMENT =	a Test::Deep plugin for validating type constraints

DISTNAME =	Test-Deep-Type-0.008
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER =	Matthias Pitzl <pitzl@genua.de>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Test-Deep \
		devel/p5-Try-Tiny

TEST_DEPENDS =	devel/p5-MooseX-Types \
		devel/p5-Test-Fatal \
		devel/p5-Test-Needs

.include <bsd.port.mk>
