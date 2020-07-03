# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:13 sthen Exp $

COMMENT = 	author test that validates a package MANIFEST

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Test-DistManifest-1.014
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =	devel/p5-Test-NoWarnings \
		devel/p5-Module-Build-Tiny

RUN_DEPENDS =	devel/p5-Module-Manifest

.include <bsd.port.mk>
