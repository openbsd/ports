COMMENT=	Versatile Video Coding (VVC) decoder

GH_ACCOUNT=	fraunhoferhhi
GH_PROJECT=	vvdec
GH_TAGNAME=	v3.3.0
CATEGORIES=	multimedia

SHARED_LIBS=	vvdec	0.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} m pthread

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	devel/cmake

COMPILER=	base-clang ports-gcc

CONFIGURE_ARGS+=-DBUILD_SHARED_LIBS=ON \
		-DCCACHE_FOUND=OFF \
		-DVVDEC_ENABLE_WERROR=FALSE

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS+=-DVVDEC_ENABLE_LINK_TIME_OPT=OFF
.endif

VVDEC_BITSTREAMS =	${WRKSRC}/ext/bitstreams

pre-test:
	@if ! [ -e ${VVDEC_BITSTREAMS}/WRAP_D_InterDigital_4/WRAP_D_InterDigital_4.bit ]; then \
		echo "\n>>> Tests require the JVET VVC conformance bitstreams. Please run:"; \
		echo ">>> cd ${WRKBUILD} && ${LOCALBASE}/bin/cmake -DVVDEC_ENABLE_BITSTREAM_DOWNLOAD=ON .\n"; \
		exit 1; \
	fi

.include <bsd.port.mk>
