COMMENT =	Customizable Wayland bar for wlroots based compositors

V =		0.14.0
REVISION =	0

DIST_TUPLE=	github  Alexays Waybar ${V} .
PKGNAME=	waybar-${V}

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =	.tar.xz

COMPILER =	base-clang ports-gcc

MODULES =	devel/meson

WANTLIB =	cairomm-1.0 dbusmenu-gtk3 epoll-shim fmt gdk-3 gdkmm-3.0 \
		gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 \
		gtk-3 gtk-layer-shell gtkmm-3.0 \
		jsoncpp mpdclient sigc-2.0 spdlog udev \
		upower-glib wayland-client xkbregistry \
		lib/inotify/inotify \
		${COMPILER_LIBCXX} c m sndio

BUILD_DEPENDS = devel/catch2 \
		textproc/scdoc \
		wayland/libinput-openbsd \
		wayland/wayland-protocols

LIB_DEPENDS =	audio/libmpdclient \
		devel/glib2 \
		devel/libinotify \
		devel/jsoncpp \
		devel/spdlog \
		devel/libsigc++-2 \
		graphics/cairomm \
		sysutils/libudev-openbsd \
		sysutils/upower \
		wayland/gtk-layer-shell \
		wayland/wayland \
		x11/libdbusmenu \
		x11/xkbcommon \
		x11/gtk3mm

RUN_DEPENDS =	fonts/font-awesome \
		fonts/roboto-fonts

CONFIGURE_ARGS = 	-Dcava=disabled \
			-Dgps=disabled \
			-Djack=disabled \
			-Dlibevdev=disabled \
			-Dlibnl=disabled \
			-Dmpris=disabled \
			-Dpipewire=disabled \
			-Dpulseaudio=disabled \
			-Dsndio=enabled \
			-Dsystemd=disabled \
			-Dwireplumber=disabled

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/waybar/
	${INSTALL_DATA} ${WRKSRC}/resources/config.jsonc  \
		${PREFIX}/share/examples/waybar/
	${INSTALL_DATA} ${WRKSRC}/resources/style.css \
		${PREFIX}/share/examples/waybar/

.include <bsd.port.mk>
