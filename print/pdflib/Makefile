# $OpenBSD: Makefile,v 1.1.1.1 2000/09/28 20:36:56 jakob Exp $

DISTNAME=		pdflib-3.02
CATEGORIES=     	print
NEED_VERSION=		1.319

HOMEPAGE=		http://www.pdflib.com/pdflib/

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.pdflib.com/pdflib/download/

LIB_DEPENDS=		jpeg.62::graphics/jpeg \
			png.1::graphics/png \
			tiff.35::graphics/tiff

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-tifflib=${PREFIX} \
			--with-pnglib=${PREFIX} \
			--without-perl \
			--without-java \
			--without-py \
			--without-tcl

do-install:
	${INSTALL_DATA} ${WRKBUILD}/pdflib/pdflib.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/pdflib/.libs/libpdf.al ${PREFIX}/lib/libpdf.a
	${INSTALL_SCRIPT} ${WRKBUILD}/pdflib-config ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pdflib
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/pdflib

.include <bsd.port.mk>
