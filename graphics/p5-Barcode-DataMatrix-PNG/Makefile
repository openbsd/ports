# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:43 naddy Exp $

COMMENT =	format Data Matrix (IEC16022) barcodes as PNG

DISTNAME =	Barcode-DataMatrix-PNG-0.04

CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Any-Moose \
		devel/p5-Moose \
		graphics/p5-Barcode-DataMatrix \
		graphics/p5-GD

.include <bsd.port.mk>
