# $OpenBSD: Makefile,v 1.22 2020/07/03 21:45:30 sthen Exp $

COMMENT=	get information from Excel spreadsheets

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Spreadsheet-ParseExcel-0.65
EPOCH=		0
CATEGORIES=	misc
FIX_EXTRACT_PERMISSIONS=Yes
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-OLE-Storage_Lite \
		devel/p5-IO-stringy \
		textproc/p5-Text-CSV_XS \
		security/p5-Crypt-RC4 \
		security/p5-Digest-Perl-MD5
TEST_DEPENDS=converters/p5-Unicode-Map \
		converters/p5-Jcode \
		misc/p5-Spreadsheet-WriteExcel
BUILD_DEPENDS = ${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	sample

.include <bsd.port.mk>
