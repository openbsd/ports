COMMENT=	automatic speech recognition (openai whisper model)

GH_ACCOUNT=	ggml-org
GH_PROJECT=	whisper.cpp
GH_TAGNAME=	v1.8.2

SITES.ggml=	https://huggingface.co/ggerganov/whisper.cpp/resolve/main/
DISTFILES.ggml=	ggml-base.en.bin
EXTRACT_ONLY=	${DISTFILES}

SHARED_LIBS +=  whisper 0.1

CATEGORIES=	audio

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c ggml ggml-base m
WANTLIB += avcodec avformat avutil swresample

MODULES=	devel/cmake
COMPILER=	base-clang ports-gcc
DEBUG_PACKAGES=	${BUILD_PACKAGES}

LIB_DEPENDS=	devel/libggml \
		graphics/ffmpeg

CONFIGURE_ARGS=	-DWHISPER_USE_SYSTEM_GGML=on \
		-DWHISPER_BUILD_SERVER=On \
		-DWHISPER_FFMPEG=On
CXXFLAGS+=	-I${LOCALBASE}/include

TEST_DEPENDS=	net/wget \
		devel/git \
		shells/bash
TEST_ENV=	LD_LIBRARY_PATH=${WRKBUILD}/src

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/whisper.cpp
	${INSTALL_DATA} ${FULLDISTDIR}/ggml-base.en.bin \
	    ${PREFIX}/share/whisper.cpp/
	${INSTALL_SCRIPT} \
	    ${WRKSRC}/models/download-ggml-model.sh \
	    ${PREFIX}/bin/whisper.cpp-download-ggml-model
	${INSTALL_PROGRAM} \
	    ${WRKBUILD}/bin/whisper-server \
	    ${PREFIX}/sbin/

pre-test:
	cp ${FULLDISTDIR}/ggml-base.en.bin ${WRKSRC}/models
	# These tests require network access to download samples.
	cd ${WRKSRC}/tests; bash ./run-tests.sh base.en ${MAKE_JOBS}

.include <bsd.port.mk>
