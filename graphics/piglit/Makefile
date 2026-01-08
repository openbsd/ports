COMMENT =	automated OpenGL and OpenCL testsuite
ONLY_FOR_ARCHS =	amd64 i386

DISTNAME =	piglit-20250507
REVISION =	1

DIST_TUPLE =	fdo mesa piglit 1767af745ed96f77b16c0c205015366d1fbbdb22 ${WRKDIST}/

CATEGORIES =	graphics

# 3Dlabs: redistribution and use permitted, no comment on selling
# Intel CUSTOM LICENSE - no limitation to use, distribute, or sell
# MIT GPLv2+ GPLv3 LGPL20
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL X11 Xrender c drm gbm
WANTLIB += m wayland-client wayland-egl xcb xcb-dri2 xkbcommon z
WANTLIB += png waffle-1 vulkan

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

RUN_DEPENDS =		devel/py-six \
			math/py-numpy \
			www/py-mako
BUILD_DEPENDS =		${RUN_DEPENDS} \
			graphics/glslang \
			graphics/vulkan-headers \
			wayland/wayland-protocols

LIB_DEPENDS =		graphics/waffle \
			graphics/png \
			graphics/vulkan-loader \
			x11/xkbcommon \
			wayland/wayland

CONFIGURE_ARGS =	-DPIGLIT_BUILD_CL_TESTS:BOOL=OFF \
			-DHAVE_LIBCACA:BOOL=FALSE
CONFIGURE_ENV =		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_TEST =		Yes

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/lib/piglit

.include <bsd.port.mk>
