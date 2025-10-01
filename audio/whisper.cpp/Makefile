COMMENT=	automatic speech recognition (openai whisper model)

GH_ACCOUNT=	ggml-org
GH_PROJECT=	whisper.cpp
GH_TAGNAME=	v1.7.6

SITES.ggml=	https://huggingface.co/ggerganov/whisper.cpp/resolve/main/
DISTFILES.ggml=	ggml-base.en.bin
EXTRACT_ONLY=	${DISTFILES}

SHARED_LIBS +=  whisper                   0.0 # 0.0

CATEGORIES=	audio

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c ggml ggml-base m

MODULES=	devel/cmake
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	devel/libggml

CONFIGURE_ARGS=	-DWHISPER_USE_SYSTEM_GGML=on
CXXFLAGS+=	-I${LOCALBASE}/include

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/whisper.cpp
	${INSTALL_DATA} ${FULLDISTDIR}/ggml-base.en.bin ${PREFIX}/share/whisper.cpp/

	${INSTALL_SCRIPT} \
	    ${WRKSRC}/models/download-ggml-model.sh \
	    ${PREFIX}/bin/whisper.cpp-download-ggml-model

.include <bsd.port.mk>
