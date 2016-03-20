# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:21 naddy Exp $

COMMENT =		safely and cleanly create closures via string eval 

DISTNAME =		Eval-Closure-0.13
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		DOY

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		devel/p5-Try-Tiny

TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
