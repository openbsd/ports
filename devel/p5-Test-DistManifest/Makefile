# $OpenBSD: Makefile,v 1.1.1.1 2012/01/18 16:52:02 okan Exp $

COMMENT = 	author test that validates a package MANIFEST

MODULES =	cpan

DISTNAME =	Test-DistManifest-1.011
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

BUILD_DEPENDS =	devel/p5-Test-NoWarnings

RUN_DEPENDS =	devel/p5-Module-Manifest

.include <bsd.port.mk>
