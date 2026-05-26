COMMENT =		LLM inference system

GH_ACCOUNT =		ggml-org
GH_PROJECT =		llama.cpp
GH_TAGNAME =		b9326
PKGNAME =		llama.cpp-0.0.${GH_TAGNAME:S/b//}

SHARED_LIBS +=		llama 5.0
SHARED_LIBS +=		llama-common 2.0
SHARED_LIBS +=		mtmd 3.0

CATEGORIES =		misc

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto ggml ggml-base m ssl

SITES.ui =		https://huggingface.co/buckets/ggml-org/llama-ui/resolve/${GH_TAGNAME}/
DISTFILES.ui =		${DISTNAME}-ui-index{index}.html \
			${DISTNAME}-ui-bundle{bundle}.js \
			${DISTNAME}-ui-bundle{bundle}.css \
			${DISTNAME}-ui-loading{loading}.html

EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc

# some tests need network access
LIB_DEPENDS =		devel/libggml

TEST_DEPENDS =		www/py-jinja2

CONFIGURE_ARGS +=	-DLLAMA_USE_SYSTEM_GGML=on \
			-DUI_SOURCE_DIR=${WRKSRC}/tools/server/public
CFLAGS +=		-I${LOCALBASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include

post-extract:
	mkdir -p ${WRKBUILD}/tools/ui/dist
.for _s _t _e in ${DISTFILES.ui:C/^(.*)\{(.*)\}(.*)$/\1 \2 \3/}
	cp ${FULLDISTDIR}/${DISTNAME}${_s}${_e} \
		${WRKBUILD}/tools/ui/dist/${_t}${_e}
.endfor

post-install:
	rm ${PREFIX}/bin/test-*

.include <bsd.port.mk>
