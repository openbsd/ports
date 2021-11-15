# $OpenBSD: Makefile,v 1.18 2021/11/15 19:39:27 rsadowski Exp $

COMMENT =	automated OpenGL and OpenCL testsuite
ONLY_FOR_ARCHS =	amd64 i386

DISTNAME =	piglit-20210128

GH_ACCOUNT =	mesa3d
GH_PROJECT =	piglit
GH_COMMIT =	83173d9536c9f5e1571efe5933d210466ec255b8
REVISION =	3

CATEGORIES =	graphics

# 3Dlabs: redistribution and use permitted, no comment on selling
# Intel CUSTOM LICENSE - no limitation to use, distribute, or sell
# MIT GPLv2+ GPLv3 LGPL20
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL X11 Xrender c drm drm_intel gbm
WANTLIB += m xcb xcb-dri2 z
WANTLIB += png waffle-1

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/python

MODPY_ADJ_FILES =	tests/glslparsertest/glsl2/gen_builtin_test.py \
			tests/oglconform.py \
			tests/vulkan.py \
			framework/replay/backends/renderdoc/renderdoc_dump_images.py \
			tests/glslparsertest/glsl2/gen_builtin_test.py \
			replayer/replayer.py \
			piglit

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			www/py-mako${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS} \
			graphics/glslang \
			graphics/vulkan-headers

LIB_DEPENDS =		graphics/waffle \
			graphics/png \
			graphics/vulkan-loader

CONFIGURE_ARGS =	-DPIGLIT_BUILD_CL_TESTS:BOOL=OFF \
			-DHAVE_LIBCACA:BOOL=FALSE
CONFIGURE_ENV =		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

NO_TEST =		Yes

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/lib/piglit

.include <bsd.port.mk>
