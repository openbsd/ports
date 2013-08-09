# $OpenBSD: Makefile,v 1.19 2013/08/09 17:39:44 ajacoutot Exp $

COMMENT-main=	OCR Engine developed at HP Labs

V=		3.01
DISTNAME=	tesseract-${V}
CATEGORIES=	graphics textproc

PKGNAME-main=	${DISTNAME}
REVISION-main=	1

SHARED_LIBS +=  tesseract            3.1      # 3.1

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		eng.traineddata.gz
			
HOMEPAGE=	https://tesseract-ocr.googlecode.com/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=	-main

### languages ##########################################################
# language files are unversionned
MAJOR_V=	${V:C/^([0-9]+).*/\1/}
LANG_V=		${MAJOR_V}.20101024
DIST_SUBDIR=	tesseract-${LANG_V}

LANGS+=	bul cat ces chi_sim chi_tra dan-frak dan deu ell fin fra hun ind
LANGS+=	ita jpn kor lav lit nld nor pol por ron rus slk slv spa srp swe
LANGS+=	tgl tur ukr vie

.for l in ${LANGS}
COMMENT-${l}=	${l} language data for Tesseract
DISTFILES+=	${l}.traineddata.gz
PKGNAME-${l}=	tesseract-${l}-${LANG_V}
MULTI_PACKAGES+=-${l}
REVISION-${l}=	4
RUN_DEPENDS-${l}=	${BASE_PKGPATH}>=${MAJOR_V}
PKG_ARCH-${l}=	*
.endfor
### end languages ######################################################

WANTLIB-main=	c jpeg m pthread stdc++ z tiff png gif lept webp

LIB_DEPENDS-main=graphics/leptonica

MASTER_SITES=	${HOMEPAGE}/files/


AUTOCONF_VERSION=2.65
AUTOMAKE_VERSION=1.10
BUILD_DEPENDS += ${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
# libtoolize(1)
BUILD_DEPENDS += devel/libtool

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		./autogen.sh ${CONFIGURE_ARGS}

post-install:
	cp ${WRKDIR}/*.traineddata ${PREFIX}/share/tessdata/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tesseract
	${INSTALL_DATA} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/doc/*.5 ${PREFIX}/man/man5/
	${INSTALL_DATA} ${WRKSRC}/{eurotext.tif,phototest.tif} \
		${PREFIX}/share/examples/tesseract

.include <bsd.port.mk>
