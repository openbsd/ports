# $OpenBSD: Makefile,v 1.8 2020/07/03 21:45:22 sthen Exp $

COMMENT =	generate data for Data Matrix (IEC16022) barcodes

DISTNAME =	Barcode-DataMatrix-0.10
REVISION =	0

CATEGORIES =	graphics

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

BUILD_DEPENDS =	devel/p5-Module-Install-Repository \
		devel/p5-Module-Install-AuthorTests
RUN_DEPENDS =	devel/p5-Moo \
		devel/p5-Type-Tiny

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
