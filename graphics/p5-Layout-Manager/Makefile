# $OpenBSD: Makefile,v 1.3 2019/07/17 14:46:32 danj Exp $

COMMENT =	2D layout management for Perl

DISTNAME =	Layout-Manager-0.35
CPAN_AUTHOR =	GPHAT
REVISION =	0

CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Moose>=0.79 \
			graphics/p5-Geometry-Primitive>=0.16 \
			graphics/p5-Graphics-Primitive>=0.43

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

.include <bsd.port.mk>
