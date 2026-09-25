COMMENT=	Yosys Open SYnthesis Suite
CATEGORIES=	cad
V=		0.69
DISTNAME=	yosys-${V}

GH_ACCOUNT=	YosysHQ
GH_PROJECT=	yosys
GH_TAGNAME=	v${V}


DIST_TUPLE+=	github YosysHQ   	abc    		v0.69   	abc/			# MIT license
DIST_TUPLE+=	github jarro2783 	cxxopts		v3.3.1  	libs/cxxopts/		# MIT license
DIST_TUPLE+=	github fmtlib		fmt		12.2.0		libs/fmt/		# MIT license
DIST_TUPLE+=	github marzer		tomlplusplus	v3.4.0		libs/tomlplusplus/	# MIT license
DIST_TUPLE+=	github MikePopoloski	regex		boost-1.91.0	libs/boost_regex/	# Boost Software License Version 1.0
DIST_TUPLE+=	github MikePopoloski	slang		v11.0		libs/slang/		# MIT license
DIST_TUPLE+=	github povik		sv-elab		2026-09-08	frontends/slang/lib/	# ISC license
DIST_TUPLE+=	github YosysHQ		symfpu		5d5e50867437fe5cabd6ab5aad3b3808ec86701f libs/symfpu # Dual License: 3-BSD and GPL 3.0


HOMEPAGE=	https://github.com/YosysHQ
MAINTAINER=	Thomas Dettbarn <dettus@dettus.net>

# ISC license
PERMIT_PACKAGE=	Yes

WANTLIB=	c ${COMPILER_LIBCXX} m z ffi

MODULES=	devel/cmake \
		lang/python

LIB_DEPENDS=	devel/libffi
BUILD_DEPENDS=	devel/bison \
		devel/gtest

CONFIGURE_ARGS= -DYOSYS_WITHOUT_SLANG=On
CXX_FLAGS += -DFMT_DEPRECATED_HEAVY_CORE

do-test:
	cd ${WRKSRC} && \
		MAKE=gmake cmake --build ${WRKBUILD} --target test


.include <bsd.port.mk>

