# $OpenBSD: Makefile,v 1.1.1.1 2017/08/04 09:47:15 bluhm Exp $

COMMENT =	powerful charting library for Perl

DISTNAME =	Chart-Clicker-2.90

CATEGORIES =	graphics

MAINTAINER =		Matthias Pitzl <pitzl@genua.de>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Class-Load \
			devel/p5-DateTime \
			devel/p5-DateTime-Set \
			devel/p5-Moose \
			graphics/p5-Color-Scheme \
			graphics/p5-Geometry-Primitive \
			graphics/p5-Graphics-Color \
			graphics/p5-Graphics-Primitive \
			graphics/p5-Graphics-Primitive-Driver-Cairo \
			graphics/p5-Layout-Manager
TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-Fatal \
			devel/p5-Test-Pod>=1.00

PKG_ARCH =		*

.include <bsd.port.mk>
