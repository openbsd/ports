COMMENT =		LLM inference system

GH_ACCOUNT =		ggml-org
GH_PROJECT =		llama.cpp
GH_TAGNAME =		b6934
PKGNAME =		llama.cpp-0.0.${GH_TAGNAME:S/b//}

SHARED_LIBS +=		llama 3.0
SHARED_LIBS +=		mtmd 1.0

CATEGORIES =		misc

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c curl ggml ggml-base m

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc

# some tests need network access
LIB_DEPENDS =		devel/libggml \
			net/curl

CONFIGURE_ARGS +=	-DLLAMA_USE_SYSTEM_GGML=on
CFLAGS +=		-I${LOCALBASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include

post-install:
	rm ${PREFIX}/bin/test-*

.include <bsd.port.mk>
