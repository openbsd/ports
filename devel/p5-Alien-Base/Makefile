# $OpenBSD: Makefile,v 1.3 2021/05/22 00:25:51 bluhm Exp $

COMMENT =	base classes for Alien:: modules

MODULES =	cpan
PKG_ARCH =	*

V =		2.37

REVISION =	1

PKGNAME =	p5-Alien-Base-${V}
DISTNAME =	Alien-Build-${V}

CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-FFI-CheckLib \
		devel/p5-File-chdir \
		devel/p5-Path-Tiny \
		devel/p5-Test2-Suite \
		sysutils/p5-File-Which \
		sysutils/p5-Capture-Tiny
TEST_DEPENDS =	devel/p5-Alien-Base-ModuleBuild

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
