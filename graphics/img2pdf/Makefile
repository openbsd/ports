# $OpenBSD: Makefile,v 1.1.1.1 2015/11/17 17:54:56 sthen Exp $

COMMENT=	losslessly convert images to PDF

MODPY_EGG_VERSION= 0.1.5
DISTNAME=	img2pdf-${MODPY_EGG_VERSION}
DISTFILES=	${DISTNAME}.tar.bz2{archive.tar.bz2?ref=${MODPY_EGG_VERSION}}

CATEGORIES=	graphics

HOMEPAGE=	https://gitlab.mister-muffin.de/josch/img2pdf/

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://gitlab.mister-muffin.de/josch/img2pdf/repository/

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
RUN_DEPENDS=	graphics/py-Pillow

WRKDIST=	${WRKDIR}/img2pdf.git

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/img2pdf
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/img2pdf/

.include <bsd.port.mk>
