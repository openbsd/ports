# $OpenBSD: Makefile,v 1.27 2005/10/30 00:10:41 fgsch Exp $

COMMENT=	"lossless image compression library"

DISTNAME=	jbigkit-1.5
CATEGORIES=	graphics
MASTER_SITES=	http://www.cl.cam.ac.uk/~mgk25/download/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

LIBVERSION=	1.2

MAKE_ENV=	LD_LIBRARY_PATH="${WRKSRC}/libjbig"
MAKE_FLAGS=	CC="${CC}" CCFLAGS="${CFLAGS} -Wall" VERSION="${LIBVERSION}"

WRKDIST=	${WRKDIR}/jbigkit

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/lib
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jbig
	cd ${WRKSRC}/pbmtools && ${INSTALL_PROGRAM} jbgtopbm pbmtojbg ${PREFIX}/bin && \
		${INSTALL_MAN} jbgtopbm.1 pbmtojbg.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/libjbig/jbig.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libjbig/libjbig.a ${PREFIX}/lib
	@if [ -f ${WRKSRC}/libjbig/libjbig.so.${LIBVERSION} ]; then \
	   ${INSTALL_DATA} ${WRKSRC}/libjbig/libjbig.so.${LIBVERSION} ${PREFIX}/lib; \
	fi
	${INSTALL_DATA} ${WRKSRC}/libjbig/jbig.doc ${PREFIX}/share/doc/jbig

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
