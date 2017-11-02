# $OpenBSD: Makefile,v 1.2 2017/11/02 14:20:59 bluhm Exp $

COMMENT =	compare JSON with Test::Deep

DISTNAME =	Test-Deep-JSON-0.04

CATEGORIES =	devel

MAINTAINER =		Matthias Pitzl <pitzl@genua.de>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		converters/p5-JSON \
			devel/p5-Exporter-Lite \
			devel/p5-Test-Deep

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
