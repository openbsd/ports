# "error: non-constant-expression cannot be narrowed from type 'int64_t'
# (aka 'long long') to 'size_t' (aka 'unsigned long') in initializer list",
# but also this really isn't going to be of much use without large amounts
# of RAM.
ONLY_FOR_ARCHS =	${LP64_ARCHS}

COMMENT =		LLM inference system

GH_ACCOUNT =		ggerganov
GH_PROJECT =		llama.cpp
GH_TAGNAME =		b5372
PKGNAME =		llama-cpp-0.0.${GH_TAGNAME:S/b//}

SHARED_LIBS +=		ggml-base 1.0
SHARED_LIBS +=		ggml-cpu 1.0
SHARED_LIBS +=		ggml 1.0
SHARED_LIBS +=		llama 2.0
SHARED_LIBS +=		mtmd_shared 0.0
SHARED_LIBS +=		ggml-vulkan 2.0

CATEGORIES =		misc

HOMEPAGE =		https://github.com/ggerganov/llama.cpp

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c curl m pthread vulkan ${COMPILER_LIBCXX}

MODULES =		devel/cmake

LIB_DEPENDS =		graphics/vulkan-loader \
			net/curl

BUILD_DEPENDS =		graphics/shaderc

CONFIGURE_ARGS =	-DGGML_CCACHE=Off \
			-DGGML_NATIVE=Off \
			-DGGML_VULKAN=On

# avoid requiring git during build
CONFIGURE_ARGS +=	-DGGML_BUILD_NUMBER=""

post-install:
	rm ${PREFIX}/bin/test-*

.include <bsd.port.mk>
