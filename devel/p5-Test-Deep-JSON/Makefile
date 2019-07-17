# $OpenBSD: Makefile,v 1.4 2019/07/17 14:49:21 danj Exp $

COMMENT =	compare JSON with Test::Deep

DISTNAME =	Test-Deep-JSON-0.04
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		converters/p5-JSON \
			devel/p5-Exporter-Lite \
			devel/p5-Test-Deep

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
