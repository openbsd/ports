# $OpenBSD: Makefile,v 1.3 2013/03/23 13:32:31 benoit Exp $

COMMENT = 	author test that validates a package MANIFEST

MODULES =	cpan

DISTNAME =	Test-DistManifest-1.012
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =	devel/p5-Test-NoWarnings

RUN_DEPENDS =	devel/p5-Module-Manifest

.include <bsd.port.mk>
