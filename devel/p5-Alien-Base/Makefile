# $OpenBSD: Makefile,v 1.2 2021/01/18 15:48:49 robert Exp $

COMMENT =	base classes for Alien:: modules

MODULES =	cpan
PKG_ARCH =	*

V =		2.37

REVISION =	0

PKGNAME =	p5-Alien-Base-${V}
DISTNAME =	Alien-Build-${V}

CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-FFI-CheckLib \
		devel/p5-File-chdir \
		devel/p5-Path-Tiny \
		sysutils/p5-File-Which \
		sysutils/p5-Capture-Tiny

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
