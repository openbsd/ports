# $OpenBSD: Makefile,v 1.10 2000/03/05 18:30:29 espie Exp $

DISTNAME=	tiff-v3.5.4
PKGNAME=	tiff-3.5.4
CATEGORIES=	graphics
NEED_VERSION=	1.223
MASTER_SITES=	http://www.libtiff.org/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    jpeg.62:graphics/jpeg

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-ZIP --with-JPEG --with-DIR_BIN="${PREFIX}/bin" \
		--with-DIR_LIB="${PREFIX}/lib" \
		--with-DIR_INC="${PREFIX}/include" \
		--with-DIR_MAN="${PREFIX}/man" \
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
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
