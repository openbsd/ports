# $OpenBSD: Makefile,v 1.3 2019/07/17 14:46:32 danj Exp $

COMMENT =	device and library agnostic graphic primitives for Perl

DISTNAME =	Graphics-Primitive-0.67
REVISION =	0

CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		converters/p5-JSON-Any>=1.22 \
			devel/p5-Data-Visitor>=0.30 \
			devel/p5-Forest>=0.06 \
			devel/p5-Moose>=0.90 \
			devel/p5-MooseX-Clone>=0.04 \
			devel/p5-MooseX-Storage>=0.17 \
			graphics/p5-Geometry-Primitive>=0.16 \
			graphics/p5-Graphics-Color>=0.20

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

.include <bsd.port.mk>
