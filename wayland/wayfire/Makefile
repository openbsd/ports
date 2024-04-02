COMMENT =	modular and extensible wayland compositor

V =		0.8.1
DISTNAME =	wayfire-${V}

SHARED_LIBS +=	wf-utils 0.0 # 0.0
CATEGORIES =	wayland

MAINTAINER =	Landry Breuil <landry@openbsd.org>
# MIT
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/WayfireWM/wayfire/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz
HOMEPAGE =	https://wayfire.org

MODULES =	devel/meson
BUILD_DEPENDS =	graphics/glm \
		devel/cmake \
		textproc/nlohmann-json \
		wayland/wayland-protocols

# include/wayfire/touch/touch.hpp needs glm/vec2.hpp
# include/wayfire/opengl.hpp needs glm/vec4.hpp
RUN_DEPENDS +=	graphics/glm

CONFIGURE_ARGS =-Duse_system_wfconfig=enabled \
		-Duse_system_wlroots=enabled \
		-Dtests=disabled

LIB_DEPENDS =	devel/pango \
		devel/libinotify \
		graphics/jpeg \
		wayland/libevdev-openbsd \
		wayland/libinput-openbsd \
		wayland/wayland \
		wayland/wf-config \
		wayland/wlroots \
		x11/xkbcommon

WANTLIB += ${COMPILER_LIBCXX} EGL GLESv2 c cairo evdev execinfo
WANTLIB += gobject-2.0 input jpeg m pango-1.0 pangocairo-1.0 pixman-1
WANTLIB += png wayland-client wayland-server wf-config wlroots xcb xkbcommon
WANTLIB += lib/inotify/inotify

# hack for gbm getting -I/usr/local/lib and failing build in wf-touch ?
CONFIGURE_ENV +=	CPPFLAGS=-I/usr/local/include

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wayfire/
	${INSTALL_DATA} ${WRKSRC}/wayfire.ini ${PREFIX}/share/examples/wayfire/
	${INSTALL_SCRIPT} ${FILESDIR}/startwayfire.sh ${PREFIX}/bin

.include <bsd.port.mk>
