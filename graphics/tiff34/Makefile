# OpenBSD makefile for:	tiff34
# Version required:	3.4
# Date created:	 	December 18, 1997	
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.6 1998/06/14 08:10:31 marc Exp $
#

# NOTE:
# At one time this port was installed as libtiff34.a to get rid of a
# rumored incompatibility between libtiff3.3 and 3.4.  This is no longer
# the case.  However, since there may be code someplace/somewhere that
# depends upon libtiff34 the following symbolic links are created:
#	libtiff34.a -> libtiff.a
#	libtiff34.so.1.0 -> libtiff.so.3.4
#	tiff34.h -> tiff.h
#	tiffio34.h -> tiffio.h
#
DISTNAME=	tiff-v3.4
PKGNAME=	tiff-3.4
CATEGORIES=	graphics

MAINTAINER=	don@OpenBSD.ORG

MASTER_SITES=   ftp://ftp.sgi.com/graphics/tiff/ \
		ftp://ftp.isri.unlv.edu/pub/mirror/tiff/
EXTRACT_SUFX=	-tar.gz

LIB_DEPENDS=    jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-ZIP --with-JPEG --with-DIR_BIN=${PREFIX}/bin \
		--with-DIR_LIB=${PREFIX}/lib --with-DIR_INC=${PREFIX}/include \
		--with-CC="${CC}" --with-GCOPTS="${CFLAGS}" \
		--with-DIRS_LIBINC=${PREFIX}/include \
		--with-DIR_GZLIB=/usr/lib \
		--with-DIR_JPEGLIB=${PREFIX}/lib \
		--with-LIBGL=no --with-LIBIMAGE=no \
		--with-INSTALL="/bin/sh ${WRKSRC}/port/install.sh" \
		--noninteractive

WRKSRC=		${WRKDIR}/tiff-v3.4

DOCDIR=	${PREFIX}/share/doc/tiff34

# Create symbolic the symbolic links for backwards compatibility
#
post-install:
	${LN} -sf libtiff.a ${PREFIX}/lib/libtiff34.a
	${LN} -sf libtiff.so.3.4 ${PREFIX}/lib/libtiff34.so.1.0
	${LN} -sf tiff.h ${PREFIX}/include/tiff34.h
	${LN} -sf tiffio.h ${PREFIX}/include/tiffio34.h
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/html/images/* ${DOCDIR}/images
.endif
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
