# $OpenBSD: Makefile,v 1.21 2008/09/29 18:41:21 simon Exp $

COMMENT=	perl modules for creating and manipulating PDF

MODULES=	cpan
DISTNAME=	Text-PDF-0.25
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	textproc

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXAMPLE_DIR=	${PREFIX}/share/examples/p5-Text-PDF
EXAMPLE_LOC=	${WRKSRC}/examples

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_SCRIPT} ${EXAMPLE_LOC}/*.pl ${EXAMPLE_DIR}/
	${INSTALL_DATA} ${EXAMPLE_LOC}/*.CFG ${EXAMPLE_DIR}/
	${INSTALL_DATA} ${EXAMPLE_LOC}/*.pdf ${EXAMPLE_DIR}/

.include <bsd.port.mk>
