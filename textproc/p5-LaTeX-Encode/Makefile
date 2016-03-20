# $OpenBSD: Makefile,v 1.5 2016/03/20 19:57:05 naddy Exp $

COMMENT =	encode characters for LaTeX formatting

DISTNAME =	LaTeX-Encode-0.091.6
CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Readonly
TEST_DEPENDS =	devel/p5-Test-Pod-Coverage>=1.08p1 \
		devel/p5-Carp-Always

.include <bsd.port.mk>
