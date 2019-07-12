# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:09 sthen Exp $

COMMENT = 	author test that validates a package MANIFEST

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Test-DistManifest-1.014
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =	devel/p5-Test-NoWarnings \
		devel/p5-Module-Build-Tiny

RUN_DEPENDS =	devel/p5-Module-Manifest

.include <bsd.port.mk>
