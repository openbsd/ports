# $OpenBSD: Makefile,v 1.25 2002/10/27 00:03:16 naddy Exp $

COMMENT=	"tools and library routines for working with TIFF images"

DISTNAME=	tiff-v3.5.7
PKGNAME=	tiff-3.5.7
CATEGORIES=	graphics

MASTER_SITES=	ftp://ftp.remotesensing.org/pub/libtiff/

HOMEPAGE=	http://www.libtiff.org/

LIB_DEPENDS=    jpeg.62::graphics/jpeg

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--prefix="${PREFIX}" --with-ZIP --with-JPEG \
		--with-CC="${CC}" --with-GCOPTS="${CFLAGS}" \
		--with-DIRS_LIBINC="${LOCALBASE}/include" \
		--with-OPTIMIZER="" --with-DIR_GZLIB="/usr/lib" \
		--with-DIR_JPEGLIB="${LOCALBASE}/lib" \
		--with-LIBGL="no" --with-LIBIMAGE="no" \
		--with-INSTALL="sh ${WRKSRC}/port/install.sh" \
		--noninteractive

# Internal Compiler Error
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* sup-sparc64
.endif

DOCDIR=	${PREFIX}/share/doc/tiff

post-extract:
	@cp -f ${PORTSDIR}/infrastructure/db/config.guess ${WRKSRC}

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/html/images/*.gif ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/html/images/*.jpg ${DOCDIR}/images

.include <bsd.port.mk>
