# $OpenBSD: Makefile,v 1.1.1.1 2017/08/04 09:55:58 bluhm Exp $

COMMENT =	primitive geometry entities for Perl

DISTNAME =	Geometry-Primitive-0.24

CATEGORIES =	graphics

MAINTAINER =		Matthias Pitzl <pitzl@genua.de>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Check-ISA>=0.04 \
			devel/p5-Moose>=0.92 \
			devel/p5-MooseX-Clone>=0.04 \
			devel/p5-MooseX-Storage>=0.23
TEST_DEPENDS =		converters/p5-JSON-Any>=1.22 \
			devel/p5-Test-Pod>=1.22

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

.include <bsd.port.mk>
