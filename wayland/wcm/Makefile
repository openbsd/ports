COMMENT =	wayfire graphical configuration manager

V =		0.11.0
DISTNAME =	wcm-${V}

CATEGORIES =	wayland

MAINTAINER =	Landry Breuil <landry@openbsd.org>
# MIT
PERMIT_PACKAGE =Yes

SITES =		https://github.com/WayfireWM/wcm/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/meson

# for intl.h/libintl
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

BUILD_DEPENDS =	wayland/wayland-protocols\
		wayland/wayfire>=0.11.0 \
		wayland/wf-shell \
		devel/gettext,-tools

LIB_DEPENDS =	wayland/wayland \
		wayland/wf-config \
		wayland/libevdev-openbsd \
		devel/fmt \
		devel/gettext \
		x11/xkbcommon \
		x11/gtk3mm

RUN_DEPENDS =	x11/gtk+4,-guic \
		devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} atkmm-1.6 c evdev fmt gdk-3 gdkmm-3.0
WANTLIB += giomm-2.4 glibmm-2.4 gobject-2.0 gtk-3 gtkmm-3.0 intl sigc-2.0
WANTLIB += wayland-client wf-config xkbregistry xml2

.include <bsd.port.mk>
