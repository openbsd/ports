# $OpenBSD: Makefile,v 1.7 2020/07/03 21:44:51 sthen Exp $

COMMENT =		safely and cleanly create closures via string eval 

DISTNAME =		Eval-Closure-0.14
CATEGORIES =		devel
REVISION =		0

# perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		DOY

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		devel/p5-Try-Tiny

TEST_DEPENDS =		devel/p5-PadWalker \
			devel/p5-Test-Fatal \
			devel/p5-Test-Output \
			devel/p5-Test-Requires

.include <bsd.port.mk>
