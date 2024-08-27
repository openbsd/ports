COMMENT =	GTK3-based panel for wayfire

V =		0.9.0
DISTNAME =	wf-shell-${V}

CATEGORIES =	wayland

MAINTAINER =	Landry Breuil <landry@openbsd.org>
# MIT
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/WayfireWM/wf-shell/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/meson

BUILD_DEPENDS =	wayland/wayfire \
		wayland/wayland-protocols

RUN_DEPENDS =	x11/gtk+4,-guic

LIB_DEPENDS =	x11/gtk3mm \
		x11/libdbusmenu \
		devel/libinotify \
		wayland/gtk-layer-shell \
		wayland/wf-config \
		wayland/wayland

WANTLIB += ${COMPILER_LIBCXX} atkmm-1.6 c cairo cairomm-1.0 dbusmenu-gtk3
WANTLIB += gdk-3 gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4
WANTLIB += gobject-2.0 gtk-3 gtk-layer-shell gtkmm-3.0 m pangomm-1.4
WANTLIB += sigc-2.0 wayland-client wf-config
WANTLIB += lib/inotify/inotify

CONFIGURE_ARGS +=	-Dpulse=disabled
CONFIGURE_ARGS +=	-Dwayland-logout=false # needs struct ucred

.include <bsd.port.mk>
