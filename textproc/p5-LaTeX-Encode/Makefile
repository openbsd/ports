# $OpenBSD: Makefile,v 1.7 2019/07/12 20:50:03 sthen Exp $

COMMENT =	encode characters for LaTeX formatting

DISTNAME =	LaTeX-Encode-0.092.0
CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Readonly
TEST_DEPENDS =	devel/p5-Test-Pod-Coverage>=1.08p1 \
		devel/p5-Carp-Always

.include <bsd.port.mk>
