# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:00 sthen Exp $

COMMENT =	modbuild::pluggable module to generate ppport.h

DISTNAME =	Module-Build-Pluggable-PPPort-0.04
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Module-Build>=0.38 \
			devel/p5-Test-Requires
RUN_DEPENDS =		devel/p5-Module-Build-Pluggable>=0.03 \
			devel/p5-Class-Accessor-Lite

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
