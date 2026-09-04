COMMENT =		LLM inference system

GH_ACCOUNT =		ggml-org
GH_PROJECT =		llama.cpp
GH_TAGNAME =		v0.4.0
BUILD_NUMBER =		10809

SHARED_LIBS +=		llama 15.0
SHARED_LIBS +=		llama-common 14.0
SHARED_LIBS +=		mtmd 10.0

CATEGORIES =		misc

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto ggml ggml-base m ssl

SITES.ui =		https://huggingface.co/buckets/ggml-org/llama-ui/resolve/b${BUILD_NUMBER}/
DISTFILES.ui =		${DISTNAME}-ui-dist{dist}.tar.gz

EXTRACT_CASES =	*-ui-dist.tar.gz) \
			mkdir -p ${WRKBUILD}/tools/ui/dist ; \
			tar -C ${WRKBUILD}/tools/ui/dist \
				-xzf ${FULLDISTDIR}/${DISTNAME}-ui-dist.tar.gz; \
			echo b${BUILD_NUMBER} > ${WRKBUILD}/tools/ui/.ui-stamp;;

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc

# some tests need network access
LIB_DEPENDS =		devel/libggml

TEST_DEPENDS =		www/py-jinja2

CONFIGURE_ARGS +=	-DLLAMA_USE_SYSTEM_GGML=on \
			-DLLAMA_BUILD_IS_DEV=off \
			-DLLAMA_BUILD_NUMBER=${BUILD_NUMBER}
CFLAGS +=		-I${LOCALBASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include

post-install:
	rm ${PREFIX}/bin/test-*

.include <bsd.port.mk>
