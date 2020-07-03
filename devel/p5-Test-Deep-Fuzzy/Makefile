# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:12 sthen Exp $

COMMENT =	fuzzy number comparison with Test::Deep

DISTNAME =	Test-Deep-Fuzzy-0.01
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Test-Deep \
			math/p5-Math-Round

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
