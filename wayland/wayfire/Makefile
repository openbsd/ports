COMMENT =	modular and extensible wayland compositor

V =		0.8.0pl17
DISTNAME =	wayfire-${V}
GH_ACCOUNT = 	WayfireWM
GH_PROJECT =	wayfire
GH_COMMIT =	c48194e055219dcb3a603b59ca37f330a64cac12

# git submodules when not building a release
DIST_TUPLE +=	github ${GH_ACCOUNT} wf-utils 15f8e16721585ae3eaf278ba71d7064237eb23f5 subprojects/wf-utils
DIST_TUPLE +=	github ${GH_ACCOUNT} wf-touch 8974eb0f6a65464b63dd03b842795cb441fb6403 subprojects/wf-touch

SHARED_LIBS +=	wf-utils 0.0 # 0.0
CATEGORIES =	wayland

MAINTAINER =	Landry Breuil <landry@openbsd.org>
# MIT
PERMIT_PACKAGE =	Yes

# we need to use a git branch because last release doesnt support wlroots 0.17 yet
# https://github.com/WayfireWM/wayfire/issues/1781
# https://github.com/WayfireWM/wayfire/pull/2024
#SITES =		https://github.com/WayfireWM/wayfire/releases/download/v${V}/
#EXTRACT_SUFX =	.tar.xz
HOMEPAGE =	https://wayfire.org

MODULES =	devel/meson
BUILD_DEPENDS =	graphics/glm \
		textproc/nlohmann-json \
		wayland/wayland-protocols

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
