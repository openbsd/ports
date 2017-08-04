# $OpenBSD: Makefile,v 1.1.1.1 2017/08/04 10:01:27 bluhm Exp $

COMMENT =	Cairo backend for Graphics::Primitive

DISTNAME =	Graphics-Primitive-Driver-Cairo-0.47

CATEGORIES =	graphics

MAINTAINER =		Matthias Pitzl <pitzl@genua.de>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

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
