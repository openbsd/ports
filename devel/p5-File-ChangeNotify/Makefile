# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:54 sthen Exp $

COMMENT =	watch for changes to files, cross-platform style

DISTNAME =	File-ChangeNotify-0.31

CATEGORIES =	devel

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Module-Pluggable \
			devel/p5-Module-Runtime \
			devel/p5-Moo>=1.006 \
			devel/p5-Type-Tiny \
			devel/p5-namespace-autoclean

TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-Test-Without-Module \
			devel/p5-Test2-Suite

PKG_ARCH =		*

.include <bsd.port.mk>
