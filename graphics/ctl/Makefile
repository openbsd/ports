COMMENT =		Color Transformation Language interpreter

GH_ACCOUNT =		ampas
GH_PROJECT =		CTL
GH_TAGNAME =		ctl-1.5.3
DISTNAME =		${GH_TAGNAME}
REVISION =		0

SHARED_LIBS +=  IlmCtl               2.0      # .2.0
SHARED_LIBS +=  IlmCtlMath           1.0      # .2.0
SHARED_LIBS +=  IlmCtlSimd           1.0      # .2.0
SHARED_LIBS +=  IlmImfCtl            1.0      # 1.5

CATEGORIES =		graphics lang
HOMEPAGE =		https://github.com/ampas/CTL/

# 3-clause BSD license
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Iex-3_3 IlmThread-3_3 Imath-3_1
WANTLIB += OpenEXR-3_3 OpenEXRCore-3_3 c m tiff

COMPILER =		base-clang ports-gcc base-gcc

CXXFLAGS_base-clang =	-std=c++14

MODULES =		devel/cmake
LIB_DEPENDS =		graphics/openexr \
			math/imath \
			graphics/tiff

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

# Fix build with OpenEXR>=3 (Imath split)
CXXFLAGS +=		-I${LOCALBASE}/include/OpenEXR -I${LOCALBASE}/include/Imath


.include <bsd.port.mk>
