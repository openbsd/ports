# $OpenBSD: Makefile,v 1.9 2020/07/11 22:54:35 sthen Exp $

COMMENT =	generate data for Data Matrix (IEC16022) barcodes

DISTNAME =	Barcode-DataMatrix-0.10
REVISION =	1

CATEGORIES =	graphics

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

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
