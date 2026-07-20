COMMENT =		LLM inference system

GH_ACCOUNT =		ggml-org
GH_PROJECT =		llama.cpp
GH_TAGNAME =		b10063
PKGNAME =		llama.cpp-0.0.${GH_TAGNAME:S/b//}

SHARED_LIBS +=		llama 12.0
SHARED_LIBS +=		llama-common 11.1
SHARED_LIBS +=		mtmd 7.0

CATEGORIES =		misc

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto ggml ggml-base m ssl

SITES.ui =		https://huggingface.co/buckets/ggml-org/llama-ui/resolve/${GH_TAGNAME}/
DISTFILES.ui =		${DISTNAME}-ui-dist{dist}.tar.gz

EXTRACT_CASES =	*-ui-dist.tar.gz) \
			mkdir -p ${WRKBUILD}/tools/ui/dist ; \
			tar -C ${WRKBUILD}/tools/ui/dist \
				-xzf ${FULLDISTDIR}/${DISTNAME}-ui-dist.tar.gz ;;

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc

# some tests need network access
LIB_DEPENDS =		devel/libggml

TEST_DEPENDS =		www/py-jinja2

CONFIGURE_ARGS +=	-DLLAMA_USE_SYSTEM_GGML=on \
			-DUI_SOURCE_DIR=${WRKSRC}/tools/server/public
CFLAGS +=		-I${LOCALBASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include

post-install:
	rm ${PREFIX}/bin/test-*

.include <bsd.port.mk>
