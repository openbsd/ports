# $OpenBSD: Makefile,v 1.4 2020/07/03 21:45:22 sthen Exp $

COMMENT =	format Data Matrix (IEC16022) barcodes as PNG

DISTNAME =	Barcode-DataMatrix-PNG-0.04
REVISION =	0

CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Any-Moose \
		devel/p5-Moose \
		graphics/p5-Barcode-DataMatrix \
		graphics/p5-GD

.include <bsd.port.mk>
