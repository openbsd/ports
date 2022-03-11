COMMENT =	library for solving sparse linear equation systems


GH_ACCOUNT =	xiaoyeli
GH_PROJECT =	superlu
GH_TAGNAME =	v5.2.2

SHARED_LIBS +=	superlu	0.0	# 5.2.2

CATEGORIES =	math

HOMEPAGE =	https://portal.nersc.gov/project/sparse/superlu/

# Mostly BSD
PERMIT_PACKAGE = Yes

WANTLIB +=	m blas

MODULES =	devel/cmake

LIB_DEPENDS =	math/blas

CONFIGURE_ARGS += -DBUILD_SHARED_LIBS=ON
CONFIGURE_ARGS += -DUSE_XSDK_DEFAULTS=ON
CONFIGURE_ARGS += -DXSDK_ENABLE_Fortran=OFF


.include <bsd.port.mk>
