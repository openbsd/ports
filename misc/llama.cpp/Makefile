COMMENT =		LLM inference system

GH_ACCOUNT =		ggml-org
GH_PROJECT =		llama.cpp
GH_TAGNAME =		b8067
PKGNAME =		llama.cpp-0.0.${GH_TAGNAME:S/b//}

SHARED_LIBS +=		llama 3.1
SHARED_LIBS +=		mtmd 1.1

CATEGORIES =		misc

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto ggml ggml-base m ssl

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc

# some tests need network access
LIB_DEPENDS =		devel/libggml

TEST_DEPENDS =		www/py-jinja2

CONFIGURE_ARGS +=	-DLLAMA_USE_SYSTEM_GGML=on
CFLAGS +=		-I${LOCALBASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include

post-install:
	rm ${PREFIX}/bin/test-*

.include <bsd.port.mk>
