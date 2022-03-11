COMMENT=	open-source JPEG 2000 codec library

GH_ACCOUNT=	uclouvain
GH_PROJECT=	openjpeg
GH_TAGNAME=	v2.4.0
DISTNAME=	openjp2-${GH_TAGNAME:S/v//}

SHARED_LIBS +=	openjp2	4.0

CATEGORIES=	graphics

HOMEPAGE=	http://www.openjpeg.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c lcms2 m png pthread tiff z

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DOPENJPEG_INSTALL_MAN_DIR=man \
		-DOPJ_DATA_ROOT=${WRKDIR}/data \
		-DBUILD_TESTING=True

LIB_DEPENDS=	graphics/lcms2 \
		graphics/png
DEBUG_PACKAGES= ${BUILD_PACKAGES}

post-install:
	cd ${WRKSRC}/doc/man; \
	       ${INSTALL_DATA} man1/* ${PREFIX}/man/man1/; \
	       ${INSTALL_DATA} man3/* ${PREFIX}/man/man3/

pre-test:
	@if [ ! -d ${WRKDIR}/data ]; then \
		printf "\nTests require a checkout of https://github.com/uclouvain/openjpeg-data\
		in ${WRKDIR}/data (approx 500MB).\n\n"; \
		exit 1; \
	fi

.include <bsd.port.mk>
