# $OpenBSD: Makefile,v 1.1.1.1 2017/08/04 10:03:00 bluhm Exp $

COMMENT =	2D layout management for Perl

DISTNAME =	Layout-Manager-0.35
CPAN_AUTHOR =	GPHAT

CATEGORIES =	graphics

MAINTAINER =		Matthias Pitzl <pitzl@genua.de>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Moose>=0.79 \
			graphics/p5-Geometry-Primitive>=0.16 \
			graphics/p5-Graphics-Primitive>=0.43

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

.include <bsd.port.mk>
