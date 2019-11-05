# $OpenBSD: Makefile,v 1.1.1.1 2019/11/05 05:57:05 sthen Exp $

COMMENT =	extremely fast HTML escaping

DISTNAME =	HTML-Escape-1.10

CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		perl

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Module-Build-Pluggable-PPPort>=0.04 \
			devel/p5-Module-Build>=0.4005 \
			devel/p5-Test-Requires

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
