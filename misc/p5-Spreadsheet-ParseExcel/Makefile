# $OpenBSD: Makefile,v 1.2 2006/12/27 12:35:13 simon Exp $

COMMENT=	"get information from Excel spreadsheets"

MODULES=	cpan
DISTNAME=       Spreadsheet-ParseExcel-0.2603
CATEGORIES=	misc

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-OLE-Storage_Lite-*:devel/p5-OLE-Storage_Lite

EXAMPLE_DIR=	${PREFIX}/share/examples/p5-Spreadsheet-ParseExcel

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/sample/*.pl ${EXAMPLE_DIR}

.include <bsd.port.mk>
