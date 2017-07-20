# $OpenBSD: Makefile,v 1.1.1.1 2017/07/20 20:12:47 bluhm Exp $

COMMENT =	compare JSON with Test::Deep

DISTNAME =	Test-Deep-JSON-0.03
CATEGORIES =	devel

MAINTAINER =	Matthias Pitzl <pitzl@genua.de>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	converters/p5-JSON \
		devel/p5-Exporter-Lite \
		devel/p5-Test-Deep \

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
