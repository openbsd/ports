# $OpenBSD: Makefile,v 1.35 2005/04/17 13:37:42 espie Exp $

COMMENT=	"tools and library routines for working with TIFF images"

VERSION=	3.6.1
DISTNAME=	tiff-v${VERSION}
PKGNAME=	tiff-${VERSION}p7
CATEGORIES=	graphics

MASTER_SITES=	ftp://ftp.remotesensing.org/pub/libtiff/old/

HOMEPAGE=	http://www.libtiff.org/

LIB_DEPENDS=    jpeg.62::graphics/jpeg
WANTLIB=	c m z

MAINTAINER=	Brad Smith <brad@openbsd.org>

FAKE=lib
# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--prefix="${PREFIX}" --with-ZIP --with-JPEG \
		--with-CC="${CC}" --with-GCOPTS="${CFLAGS}" \
		--with-DIRS_LIBINC="${DEPBASE}/include" \
		--with-OPTIMIZER="" --with-DIR_GZLIB="/usr/lib" \
		--with-DIR_JPEGLIB="${DEPBASE}/lib" \
		--with-LIBGL="no" --with-LIBIMAGE="no" \
		--with-INSTALL="sh ${WRKSRC}/port/install.sh" \
		--noninteractive

DOCDIR=	${PREFIX}/share/doc/tiff

post-extract:
	@cp -f ${PORTSDIR}/infrastructure/db/{config.guess,config.sub} ${WRKSRC}

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/html/images/*.gif ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/html/images/*.jpg ${DOCDIR}/images

.include <bsd.port.mk>
