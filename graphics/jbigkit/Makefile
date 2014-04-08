# $OpenBSD: Makefile,v 1.43 2014/04/08 13:59:32 sthen Exp $

COMMENT =	lossless image compression library, with lightweight version

DISTNAME =	jbigkit-2.1

SHARED_LIBS +=	jbig   3.0 # 2.0
SHARED_LIBS +=	jbig85 3.0 # 2.0

CATEGORIES =	graphics

HOMEPAGE =	http://www.cl.cam.ac.uk/~mgk25/jbigkit/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =	http://www.cl.cam.ac.uk/~mgk25/download/

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS} -Wall" \
		VERSION="${LIBjbig_VERSION}"
MAKE_ENV =	LD_LIBRARY_PATH="${WRKSRC}/libjbig"

do-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jbigkit
	cd ${WRKSRC}/pbmtools && \
		${INSTALL_PROGRAM} jbgtopbm pbmtojbg ${PREFIX}/bin && \
		${INSTALL_MAN} jbgtopbm.1 pbmtojbg.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/libjbig/jbig{,_ar,85}.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libjbig/libjbig{,85}.a ${PREFIX}/lib
	if [ -e ${WRKSRC}/libjbig/libjbig.so.${LIBjbig_VERSION} ]; then \
		${INSTALL_DATA} ${WRKSRC}/libjbig/libjbig{,85}.so.${LIBjbig_VERSION} ${PREFIX}/lib; fi
	${INSTALL_DATA} ${WRKSRC}/libjbig/jbig{,85}.txt ${PREFIX}/share/doc/jbigkit

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
