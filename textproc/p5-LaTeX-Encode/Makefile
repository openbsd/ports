# $OpenBSD: Makefile,v 1.6 2017/05/18 07:03:02 benoit Exp $

COMMENT =	encode characters for LaTeX formatting

DISTNAME =	LaTeX-Encode-0.092.0
CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Readonly
TEST_DEPENDS =	devel/p5-Test-Pod-Coverage>=1.08p1 \
		devel/p5-Carp-Always

.include <bsd.port.mk>
