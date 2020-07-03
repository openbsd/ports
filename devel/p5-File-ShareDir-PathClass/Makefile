# $OpenBSD: Makefile,v 1.3 2020/07/03 21:44:54 sthen Exp $

COMMENT =	File::ShareDir returning Path::Class objects

DISTNAME =	File-ShareDir-PathClass-1.112440
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Module-Build>=0.3601

RUN_DEPENDS =		devel/p5-File-ShareDir \
			devel/p5-Path-Class \
			devel/p5-Sub-Exporter

MAKE_ENV +=		TEST_POD=Yes RELEASE_TESTING=Yes

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
