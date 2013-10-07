# $OpenBSD: Makefile,v 1.20 2013/10/07 06:50:59 espie Exp $

COMMENT-main=	OCR Engine developed at HP Labs

V=		3.01
DISTNAME=	tesseract-${V}
CATEGORIES=	graphics textproc

PKGNAME-main=	${DISTNAME}
REVISION-main=	1

SHARED_LIBS +=  tesseract            3.1      # 3.1

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		eng.traineddata.gz

MAJOR_V=	${V:C/^([0-9]+).*/\1/}
LANG_V=		${MAJOR_V}.20101024
DIST_SUBDIR=	tesseract-${LANG_V}
			
HOMEPAGE=	https://tesseract-ocr.googlecode.com/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=	-main

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
