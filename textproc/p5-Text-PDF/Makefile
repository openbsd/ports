# $OpenBSD: Makefile,v 1.19 2007/01/21 21:46:21 simon Exp $

COMMENT=	"perl modules for creating and manipulating PDF"

MODULES=	cpan
DISTNAME=	Text-PDF-0.25
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	textproc

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Compress-Zlib-*:archivers/p5-Compress-Zlib

EXAMPLE_DIR=	${PREFIX}/share/examples/p5-Text-PDF
EXAMPLE_LOC=	${WRKSRC}/examples

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_SCRIPT} ${EXAMPLE_LOC}/*.pl ${EXAMPLE_DIR}/
	${INSTALL_DATA} ${EXAMPLE_LOC}/*.CFG ${EXAMPLE_DIR}/
	${INSTALL_DATA} ${EXAMPLE_LOC}/*.pdf ${EXAMPLE_DIR}/

.include <bsd.port.mk>
