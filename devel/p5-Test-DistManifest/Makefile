# $OpenBSD: Makefile,v 1.4 2015/03/31 13:04:17 benoit Exp $

COMMENT = 	author test that validates a package MANIFEST

MODULES =	cpan

DISTNAME =	Test-DistManifest-1.014
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =	devel/p5-Test-NoWarnings \
		devel/p5-Module-Build-Tiny

RUN_DEPENDS =	devel/p5-Module-Manifest

.include <bsd.port.mk>
