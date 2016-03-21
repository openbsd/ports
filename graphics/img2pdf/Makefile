# $OpenBSD: Makefile,v 1.2 2016/03/21 18:17:18 sthen Exp $

COMMENT=	losslessly convert images to PDF

MODPY_EGG_VERSION= 0.1.5
DISTNAME=	img2pdf-${MODPY_EGG_VERSION}
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	graphics

HOMEPAGE=	https://gitlab.mister-muffin.de/josch/img2pdf/

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

# from https://gitlab.mister-muffin.de/josch/img2pdf/repository/
MASTER_SITES=	https://spacehopper.org/mirrors/

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
RUN_DEPENDS=	graphics/py-Pillow

WRKDIST=	${WRKDIR}/img2pdf.git

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/img2pdf
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/img2pdf/

.include <bsd.port.mk>
