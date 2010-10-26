# $OpenBSD: Makefile,v 1.9 2010/10/26 14:43:53 ajacoutot Exp $

COMMENT-main=	OCR Engine developed at HP Labs

V=		3.00
DISTNAME=	tesseract-${V}
CATEGORIES=	graphics textproc

PKGNAME-main=	${DISTNAME}
REVISION-main=	1

SHARED_LIBS +=  tesseract_api             0.0 # 3.0
SHARED_LIBS +=  tesseract_ccstruct        0.0 # 3.0
SHARED_LIBS +=  tesseract_ccutil          0.0 # 3.0
SHARED_LIBS +=  tesseract_classify        0.0 # 3.0
SHARED_LIBS +=  tesseract_cutil           0.0 # 3.0
SHARED_LIBS +=  tesseract_dict            0.0 # 3.0
SHARED_LIBS +=  tesseract_image           0.0 # 3.0
SHARED_LIBS +=  tesseract_main            0.0 # 3.0
SHARED_LIBS +=  tesseract_textord         0.0 # 3.0
SHARED_LIBS +=  tesseract_training        0.0 # 3.0
SHARED_LIBS +=  tesseract_viewer          0.0 # 3.0
SHARED_LIBS +=  tesseract_wordrec         0.0 # 3.0

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		eng.traineddata.gz
			
HOMEPAGE=	http://code.google.com/p/tesseract-ocr/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main

### languages ##########################################################
# language files are unversionned
MAJOR_V=	${V:C/^([0-9]+).*/\1/}
LANG_V=		${MAJOR_V}.20101024
DIST_SUBDIR=tesseract-${LANG_V}

LANGS+=	bul cat ces chi_sim chi_tra dan-frak dan deu ell fin fra hun ind
LANGS+=	ita jpn kor lav lit nld nor pol por ron rus slk slv spa srp swe
LANGS+=	tgl tur ukr vie

.for l in ${LANGS}
COMMENT-${l}=	${l} language data for Tesseract
DISTFILES+=	${l}.traineddata.gz
PKGNAME-${l}=	tesseract-${l}-${LANG_V}
MULTI_PACKAGES+=-${l}
REVISION-${l}=	0
RUN_DEPENDS-${l}=:tesseract->=${MAJOR_V}:${BASE_PKGPATH}
PKG_ARCH-${l}=	*
.endfor
### end languages ######################################################

WANTLIB-main=	c jpeg m pthread stdc++ z tiff png

LIB_DEPENDS-main= ::graphics/tiff \
		::graphics/png


MASTER_SITES=	http://tesseract-ocr.googlecode.com/files/

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ccutil/debugwin.cpp

post-install:
	cp ${WRKDIR}/*.traineddata ${PREFIX}/share/tessdata/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tesseract
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tesseract
	${INSTALL_DATA} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/doc/*.5 ${PREFIX}/man/man5/
	${INSTALL_DATA} ${WRKSRC}/README ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/tesseract
	${INSTALL_DATA} ${WRKSRC}/{eurotext.tif,phototest.tif} \
		${PREFIX}/share/examples/tesseract

.include <bsd.port.mk>
