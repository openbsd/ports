# $OpenBSD: Makefile,v 1.5 2016/03/20 19:56:36 naddy Exp $

COMMENT = 	author test that validates a package MANIFEST

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Test-DistManifest-1.014
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =	devel/p5-Test-NoWarnings \
		devel/p5-Module-Build-Tiny

RUN_DEPENDS =	devel/p5-Module-Manifest

.include <bsd.port.mk>
