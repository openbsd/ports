# $OpenBSD: Makefile,v 1.1.1.1 2019/02/22 21:01:09 cwen Exp $

COMMENT =	File::ShareDir returning Path::Class objects

DISTNAME =	File-ShareDir-PathClass-1.112440

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Module-Build>=0.3601

RUN_DEPENDS =		devel/p5-File-ShareDir \
			devel/p5-Path-Class \
			devel/p5-Sub-Exporter

MAKE_ENV +=		TEST_POD=Yes RELEASE_TESTING=Yes

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
