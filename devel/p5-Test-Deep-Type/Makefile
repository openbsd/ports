# $OpenBSD: Makefile,v 1.2 2017/12/05 16:25:45 espie Exp $

COMMENT =	a Test::Deep plugin for validating type constraints

DISTNAME =	Test-Deep-Type-0.008
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER =	Matthias Pitzl <pitzl@genua.de>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Test-Deep \
		devel/p5-Try-Tiny

TEST_DEPENDS =	devel/p5-MooseX-Types \
		devel/p5-Test-Fatal \
		devel/p5-Test-Needs

.include <bsd.port.mk>
