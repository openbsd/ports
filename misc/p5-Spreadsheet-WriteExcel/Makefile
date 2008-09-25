# $OpenBSD: Makefile,v 1.7 2008/09/25 18:49:44 jasper Exp $

COMMENT=	write a cross-platform Excel binary file

MODULES=	cpan
DISTNAME=	Spreadsheet-WriteExcel-2.25
CATEGORIES=	misc

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-OLE-Storage_Lite \
		::devel/p5-Parse-RecDescent

EXAMPLE_DIR=	${PREFIX}/share/examples/p5-Spreadsheet-WriteExcel

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLE_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.pl ${EXAMPLE_DIR}

.include <bsd.port.mk>
