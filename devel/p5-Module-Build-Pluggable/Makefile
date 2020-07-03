# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:00 sthen Exp $

COMMENT =	plugin support for Module::Build

DISTNAME =	Module-Build-Pluggable-0.10
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Module-Build>=0.38
RUN_DEPENDS =		devel/p5-Class-Accessor-Lite \
			devel/p5-Class-Method-Modifiers \
			devel/p5-Data-OptList \
			devel/p5-Module-Build>=0.38 \
			devel/p5-Test-SharedFork

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
