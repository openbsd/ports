# $OpenBSD: Makefile,v 1.17 2013/03/11 11:23:58 espie Exp $

COMMENT=	get information from Excel spreadsheets

MODULES=	cpan
DISTNAME=	Spreadsheet-ParseExcel-0.58
REVISION=	1
EPOCH=		0
CATEGORIES=	misc
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-OLE-Storage_Lite \
		devel/p5-IO-stringy \
		textproc/p5-Text-CSV_XS
TEST_DEPENDS=converters/p5-Unicode-Map \
		converters/p5-Jcode \
		misc/p5-Spreadsheet-WriteExcel
BUILD_DEPENDS = ${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	sample

.include <bsd.port.mk>
