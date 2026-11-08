COMMENT =	GTK4-based panel for wayfire

GH_ACCOUNT =	WayfireWM
GH_PROJECT =	wf-shell
GH_TAGNAME =	v0.11.0

CATEGORIES =	wayland

MAINTAINER =	Landry Breuil <landry@openbsd.org>
# MIT
PERMIT_PACKAGE =	Yes

DIST_TUPLE +=	github ${GH_ACCOUNT} wf-json 70039e13cdeaebd8ec498ed30bf5ab91c2e313ec subprojects/wf-json

# C++
COMPILER =	base-clang ports-gcc

MODULES =	devel/meson

DEBUG_PACKAGES =	${BUILD_PACKAGES}
BUILD_DEPENDS =	wayland/wayfire \
		wayland/wayland-protocols

LIB_DEPENDS =	x11/gtkmm40 \
		x11/libdbusmenu \
		devel/libinotify \
		devel/yyjson \
		wayland/gtk4-layer-shell \
		wayland/wf-config \
		wayland/wayland

WANTLIB += ${COMPILER_LIBCXX} c cairomm-1.16 dbusmenu-glib drm
WANTLIB += gbm gio-2.0 giomm-2.68 glib-2.0 glibmm-2.68 gobject-2.0
WANTLIB += gtk-4 gtk4-layer-shell gtkmm-4.0 m sigc-3.0 wayland-client
WANTLIB += wf-config xkbregistry yyjson

CONFIGURE_ARGS +=	-Dvolume-widget=disabled # needs pulse
CONFIGURE_ARGS +=	-Dwp-mixer-widget=disabled # needs wireplumber
CONFIGURE_ARGS +=	-Dddcutil=disabled # needs ddcutil
CONFIGURE_ARGS +=	-Dwayland-logout=false # needs struct ucred

post-install:
	${INSTALL_DATA} ${WRKSRC}/wf-shell.ini.example ${PREFIX}/share/wf-shell/wf-shell.ini.example

.include <bsd.port.mk>
