# $OpenBSD: Makefile,v 1.23 2015/05/22 11:31:16 ajacoutot Exp $

COMMENT=	OCR Engine developed at HP Labs

V=		3.02.02
DISTNAME=	tesseract-ocr-${V}
PKGNAME=	tesseract-${V}
WRKDIST=	${WRKDIR}/tesseract-ocr
REVISION=	1

SHARED_LIBS +=  tesseract            3.1      # 3.2

CATEGORIES=	graphics textproc

HOMEPAGE=	https://tesseract-ocr.googlecode.com/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

WANTLIB += c jpeg m pthread stdc++ z tiff png gif lept webp

LIB_DEPENDS=	graphics/leptonica

AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.14
BUILD_DEPENDS += ${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
# libtoolize(1)
BUILD_DEPENDS += devel/libtool

RUN_DEPENDS=	graphics/tesseract-langs/eng

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tesseract
	${INSTALL_DATA} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/doc/*.5 ${PREFIX}/man/man5/
	${INSTALL_DATA} ${WRKSRC}/{eurotext.tif,phototest.tif} \
		${PREFIX}/share/examples/tesseract

.include <bsd.port.mk>
