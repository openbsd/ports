# $OpenBSD: Makefile,v 1.10 2016/05/30 15:24:48 sthen Exp $

COMMENT =	watch for changes to files, cross-platform style

DISTNAME =	File-ChangeNotify-0.26

CATEGORIES =	devel

# Artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Class-Load \
			devel/p5-Module-Pluggable \
			devel/p5-Module-Runtime \
			devel/p5-Moo>=1.006 \
			devel/p5-Type-Tiny \
			devel/p5-namespace-autoclean

TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-Requires \
			devel/p5-Test-Without-Module

PKG_ARCH =		*

.include <bsd.port.mk>
