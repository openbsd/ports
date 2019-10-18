# $OpenBSD: Makefile,v 1.5 2019/10/18 14:15:09 cwen Exp $

COMMENT =	compare JSON with Test::Deep

DISTNAME =	Test-Deep-JSON-0.05

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		converters/p5-JSON-MaybeXS \
			devel/p5-Exporter-Lite \
			devel/p5-Test-Deep

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
