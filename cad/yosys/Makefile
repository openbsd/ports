COMMENT=	Yosys Open SYnthesis Suite
CATEGORIES=	cad
V=		0.67
DISTNAME=	yosys-${V}

GH_ACCOUNT=	YosysHQ
GH_PROJECT=	yosys
GH_TAGNAME=	v${V}


DIST_TUPLE+=	github YosysHQ   	abc    		v0.67   	abc/
DIST_TUPLE+=	github jarro2783 	cxxopts		v3.3.1  	libs/cxxopts/
DIST_TUPLE+=	github fmtlib		fmt		12.2.0		libs/fmt/
DIST_TUPLE+=	github marzer		tomlplusplus	v3.4.0		libs/tomlplusplus/
DIST_TUPLE+=	github MikePopoloski	slang		v11.0		libs/slang/
DIST_TUPLE+=	github povik		sv-elab		2026-07-07	frontends/slang/lib/

HOMEPAGE=	https://github.com/YosysHQ
MAINTAINER=	Thomas Dettbarn <dettus@dettus.net>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c ${COMPILER_LIBCXX} m z ffi

MODULES=	devel/cmake
NO_TEST=	Yes

LIB_DEPENDS=	devel/libffi
BUILD_DEPENDS=	devel/bison

CONFIGURE_ARGS= -DYOSYS_WITHOUT_SLANG=On
CXX_FLAGS += -DFMT_DEPRECATED_HEAVY_CORE


.include <bsd.port.mk>
