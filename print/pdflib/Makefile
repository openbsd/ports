# $OpenBSD: Makefile,v 1.3 2001/05/24 02:28:21 kevlo Exp $

COMMENT=		"C library to produce PDF files"

DISTNAME=		pdflib-3.02
CATEGORIES=     	print
NEED_VERSION=		1.402

HOMEPAGE=		http://www.pdflib.com/pdflib/

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.pdflib.com/pdflib/download/

LIB_DEPENDS=		jpeg.62::graphics/jpeg \
			png.2::graphics/png \
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
