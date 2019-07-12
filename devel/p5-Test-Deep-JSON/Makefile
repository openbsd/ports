# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:09 sthen Exp $

COMMENT =	compare JSON with Test::Deep

DISTNAME =	Test-Deep-JSON-0.04

CATEGORIES =	devel

MAINTAINER =		Matthias Pitzl <pitzl@genua.de>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		converters/p5-JSON \
			devel/p5-Exporter-Lite \
			devel/p5-Test-Deep

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
