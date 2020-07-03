# $OpenBSD: Makefile,v 1.8 2020/07/03 21:45:46 sthen Exp $

COMMENT =	encode characters for LaTeX formatting

DISTNAME =	LaTeX-Encode-0.092.0
CATEGORIES =	textproc
REVISION =	0

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Readonly
TEST_DEPENDS =	devel/p5-Test-Pod-Coverage>=1.08p1 \
		devel/p5-Carp-Always

.include <bsd.port.mk>
