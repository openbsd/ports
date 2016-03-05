# $OpenBSD: Makefile,v 1.1.1.1 2016/03/05 12:10:45 sthen Exp $

COMMENT =	generate data for Data Matrix (IEC16022) barcodes

DISTNAME =	Barcode-DataMatrix-0.07

CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Module-Install-Repository \
			devel/p5-Module-Install-AuthorTests
RUN_DEPENDS =		devel/p5-Moo \
			devel/p5-Type-Tiny

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
