# $OpenBSD: Makefile,v 1.5 1999/10/26 22:05:20 brad Exp $

DISTNAME=	tiff-v3.5.2
PKGNAME=	tiff-3.5.2
CATEGORIES=	graphics
MASTER_SITES=	http://www.libtiff.org/

NEED_VERSION=	1.64

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=    jpeg.62:${PORTSDIR}/graphics/jpeg

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-ZIP --with-JPEG --with-DIR_BIN="${PREFIX}/bin" \
		--with-DIR_LIB="${PREFIX}/lib" \
		--with-DIR_INC="${PREFIX}/include" \
		--with-DIR_MAN="${PREFIX}/man" \
		--with-CC="${CC}" --with-GCOPTS="${CFLAGS}" \
		--with-DIRS_LIBINC="${PREFIX}/include" \
		--with-DIR_GZLIB="/usr/lib" \
		--with-DIR_JPEGLIB="${PREFIX}/lib" \
		--with-LIBGL="no" --with-LIBIMAGE="no" \
		--with-INSTALL="${SH} ${WRKSRC}/port/install.sh" \
		--noninteractive

DOCDIR=	${PREFIX}/share/doc/tiff

post-install:
	@${MKDIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/html/images/*.gif ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/html/images/*.jpg ${DOCDIR}/images
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
