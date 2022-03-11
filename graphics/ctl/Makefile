COMMENT =		Color Transformation Language interpreter

GH_ACCOUNT =		ampas
GH_PROJECT =		CTL
GH_TAGNAME =		ctl-1.5.2
DISTNAME =		${GH_TAGNAME}
REVISION =		7

SHARED_LIBS +=  IlmCtl               1.0      # .2.0
SHARED_LIBS +=  IlmCtlMath           1.0      # .2.0
SHARED_LIBS +=  IlmCtlSimd           1.0      # .2.0
SHARED_LIBS +=  IlmImfCtl            1.0      # 1.5

CATEGORIES =		graphics lang
HOMEPAGE =		https://github.com/ampas/CTL/

# 3-clause BSD license
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Iex-3_1 IlmThread-3_1 Imath-3_1 c
WANTLIB += OpenEXR-3_1 m tiff

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake
LIB_DEPENDS =		graphics/openexr \
			graphics/tiff

# Fix build with OpenEXR>=3 (Imath split)
CXXFLAGS +=		-I${LOCALBASE}/include/OpenEXR -I${LOCALBASE}/include/Imath

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure.cmake

.include <bsd.port.mk>
