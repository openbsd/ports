COMMENT =	modular and extensible wayland compositor

V =		0.10.0
GH_ACCOUNT =	WayfireWM

DISTNAME =	wayfire-${V}
REVISION =	1

SHARED_LIBS +=	wf-utils 0.0 # 0.0
CATEGORIES =	wayland

MAINTAINER =	Landry Breuil <landry@openbsd.org>
# MIT
PERMIT_PACKAGE =	Yes

# git submodules when not building a release
DIST_TUPLE +=	github ${GH_ACCOUNT} wf-utils 3ef27d1f76b5f3d1f34305bff12b3174e81727c2 subprojects/wf-utils
DIST_TUPLE +=	github ${GH_ACCOUNT} wf-touch 093d8943df03cc8a2667990a065513c1bf2b57e0 subprojects/wf-touch

SITES =		https://github.com/WayfireWM/wayfire/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

HOMEPAGE =	https://wayfire.org

MODULES =	devel/meson wayland/wlroots
BUILD_DEPENDS =	graphics/glm \
		devel/cmake/core \
		wayland/wayland-protocols

# include/wayfire/touch/touch.hpp needs glm/vec2.hpp
# include/wayfire/opengl.hpp needs glm/vec4.hpp
RUN_DEPENDS +=	graphics/glm

CONFIGURE_ARGS =-Duse_system_wfconfig=enabled \
		-Duse_system_wlroots=enabled \
		-Denable_openmp=false \
		-Dtests=disabled

LIB_DEPENDS =	devel/pango \
		devel/libinotify \
		devel/yyjson \
		graphics/jpeg \
		wayland/libevdev-openbsd \
		wayland/libinput-openbsd \
		wayland/wayland \
		wayland/wf-config \
		x11/xkbcommon

WANTLIB += ${COMPILER_LIBCXX} EGL GLESv2 c cairo evdev execinfo
WANTLIB += gobject-2.0 input jpeg m pango-1.0 pangocairo-1.0 pixman-1
WANTLIB += png wayland-client wayland-server wf-config xcb xkbcommon
WANTLIB += udev yyjson
WANTLIB += lib/inotify/inotify

# hack for gbm getting -I/usr/local/lib and failing build in wf-touch ?
CONFIGURE_ENV +=	CPPFLAGS=-I/usr/local/include

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wayfire/
	${INSTALL_DATA} ${WRKSRC}/wayfire.ini ${PREFIX}/share/examples/wayfire/
	${INSTALL_SCRIPT} ${FILESDIR}/startwayfire.sh ${PREFIX}/bin

.include <bsd.port.mk>
