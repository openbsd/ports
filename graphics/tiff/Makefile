# $OpenBSD: Makefile,v 1.20 2000/09/24 07:04:09 brad Exp $

DISTNAME=	tiff-v3.5.5
PKGNAME=	tiff-3.5.5
CATEGORIES=	graphics
NEED_VERSION=	1.330
MASTER_SITES=	http://www.libtiff.org/

HOMEPAGE=	http://www.libtiff.org/

LIB_DEPENDS=    jpeg.62::graphics/jpeg

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--with-ZIP --with-JPEG \
		--with-DIR_BIN='$${DESTDIR}${PREFIX}/bin' \
		--with-DIR_LIB='$${DESTDIR}${PREFIX}/lib' \
		--with-DIR_INC='$${DESTDIR}${PREFIX}/include' \
		--with-DIR_MAN='$${DESTDIR}${PREFIX}/man' \
		--with-CC="${CC}" --with-GCOPTS="${CFLAGS}" \
		--with-DIRS_LIBINC="${PREFIX}/include" \
		--with-DIR_GZLIB="/usr/lib" \
		--with-DIR_JPEGLIB="${PREFIX}/lib" \
		--with-LIBGL="no" --with-LIBIMAGE="no" \
		--with-INSTALL="sh ${WRKSRC}/port/install.sh" \
		--noninteractive

DOCDIR=	${PREFIX}/share/doc/tiff

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/html/images/*.gif ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/html/images/*.jpg ${DOCDIR}/images

.include <bsd.port.mk>
