# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:43 naddy Exp $

COMMENT =	generate data for Data Matrix (IEC16022) barcodes

DISTNAME =	Barcode-DataMatrix-0.07

CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

BUILD_DEPENDS =		devel/p5-Module-Install-Repository \
			devel/p5-Module-Install-AuthorTests
RUN_DEPENDS =		devel/p5-Moo \
			devel/p5-Type-Tiny

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
