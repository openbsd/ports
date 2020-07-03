# $OpenBSD: Makefile,v 1.4 2020/07/03 21:45:23 sthen Exp $

COMMENT =	Cairo backend for Graphics::Primitive

DISTNAME =	Graphics-Primitive-Driver-Cairo-0.47
REVISION =	1

CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Moose \
			graphics/p5-Cairo \
			graphics/p5-Geometry-Primitive \
			graphics/p5-Graphics-Primitive \
			textproc/p5-Text-Flow
TEST_DEPENDS =		devel/p5-Test-Pod>=1.41 \
			graphics/p5-Graphics-Color

PKG_ARCH =		*

.include <bsd.port.mk>
