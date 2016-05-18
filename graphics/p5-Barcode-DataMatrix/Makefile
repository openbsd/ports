# $OpenBSD: Makefile,v 1.4 2016/05/18 10:31:26 sthen Exp $

COMMENT =	generate data for Data Matrix (IEC16022) barcodes

DISTNAME =	Barcode-DataMatrix-0.08
REVISION =	0

CATEGORIES =	graphics

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

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
