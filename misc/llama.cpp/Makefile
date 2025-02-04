COMMENT =		LLM inference system

GH_ACCOUNT =		ggerganov
GH_PROJECT =		llama.cpp
GH_TAGNAME =		b4589
PKGNAME =		llama-cpp-0.0.${GH_TAGNAME:S/b//}

SHARED_LIBS +=		ggml-base 0.0
SHARED_LIBS +=		ggml-cpu 0.0
SHARED_LIBS +=		ggml 0.0
SHARED_LIBS +=		llama 0.0
SHARED_LIBS +=		llava_shared 0.0

CATEGORIES =		misc

HOMEPAGE =		https://github.com/ggerganov/llama.cpp

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		m pthread ${COMPILER_LIBCXX}

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/git

CONFIGURE_ARGS =	-DGGML_CCACHE=Off \
			-DGGML_NATIVE=Off \
			-DGGML_VULKAN=On

.include <bsd.port.mk>
