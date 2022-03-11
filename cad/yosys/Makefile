COMMENT =	framework for Verilog RTL synthesis
DISTNAME =	yosys-0.9pl4081
REVISION =	0

GH_ACCOUNT =	YosysHQ
GH_PROJECT =	yosys
GH_COMMIT =	25de8faf10157ab0cb40f77c7cbf3143527c598e

CATEGORIES =	cad

HOMEPAGE =	http://www.clifford.at/yosys/
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

# ISC (yosys), MIT (MiniSat)
PERMIT_PACKAGE = Yes

WANTLIB +=	${COMPILER_LIBCXX} ${MODTCL_WANTLIB} c m readline ffi z

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	lang/python \
		lang/tcl

CONFIGURE_STYLE = none

BUILD_DEPENDS =	devel/bison \
		shells/bash

RUN_DEPENDS =	cad/abc \
		math/graphviz \
		graphics/xdot \
		shells/bash

LIB_DEPENDS =	${MODTCL_LIB_DEPENDS} \
		devel/libffi

TEST_DEPENDS =	${BUILD_PKGPATH} \
		cad/abc \
		lang/gawk \
		lang/iverilog \
		shells/bash

USE_GMAKE =	Yes

MAKE_FLAGS =	CXX="${CXX}" \
		LD="${CXX} -L${LOCALBASE}/lib" \
		PRETTY=0

MAKE_ENV =	ABCEXTERNAL=${LOCALBASE}/bin/abc \
		CXXFLAGS="${CXXFLAGS}" \
		TCL_VERSION="${MODTCL_LIB}" \
		TCL_INCLUDE="${MODTCL_INCDIR}"

TEST_ENV =	MAKE="${MAKE_PROGRAM}"

FAKE_FLAGS =	PREFIX="${TRUEPREFIX}"

# the only gcc-specific things from "config-gcc" are setting CXX/LD, which
# we override above
do-configure:
	@${SUBST_CMD} ${WRKSRC}/kernel/yosys.cc
	@cd ${WRKBUILD} && exec env -i ${MAKE_ENV} ${MAKE_PROGRAM} config-gcc

post-build:
	grep -rl "#!/bin/bash" ${WRKSRC} | \
	    xargs sed -i 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,'

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/share/yosys/python3

.include <bsd.port.mk>
