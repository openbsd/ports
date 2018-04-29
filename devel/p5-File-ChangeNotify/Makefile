# $OpenBSD: Makefile,v 1.12 2018/04/29 13:03:51 ajacoutot Exp $

COMMENT =	watch for changes to files, cross-platform style

DISTNAME =	File-ChangeNotify-0.28

CATEGORIES =	devel

# Artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Class-Load \
			devel/p5-Module-Pluggable \
			devel/p5-Module-Runtime \
			devel/p5-Moo \
			devel/p5-Type-Tiny \
			devel/p5-namespace-autoclean

TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-Requires \
			devel/p5-Test-Without-Module

PKG_ARCH =		*

.include <bsd.port.mk>
