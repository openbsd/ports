# $OpenBSD: Makefile,v 1.4 2007/02/26 15:15:38 steven Exp $

COMMENT=	"get information from Excel spreadsheets"

MODULES=	cpan
DISTNAME=	Spreadsheet-ParseExcel-0.28
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	misc

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-OLE-Storage_Lite \
		::devel/p5-IO-stringy
REGRESS_DEPENDS=::converters/p5-Unicode-Map \
		::converters/p5-Jcode \
		::misc/p5-Spreadsheet-WriteExcel

MAKE_ENV=	TEST_POD=Yes

EXAMPLE_DIR=	${PREFIX}/share/examples/p5-Spreadsheet-ParseExcel

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/sample/*.pl ${EXAMPLE_DIR}

.include <bsd.port.mk>
