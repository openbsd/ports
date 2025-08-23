COMMENT =		cross-platform multimedia library

V =			3.2.20
DISTNAME =		SDL3-${V}
PKGNAME =		${DISTNAME:L}

SHARED_LIBS +=		SDL3                      0.0 # 3.2.18

CATEGORIES =		devel
HOMEPAGE =		https://libsdl.org/
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += EGL X11 Xcursor Xext Xfixes Xi Xrandr Xrender Xss iconv
WANTLIB += m pthread sndio wayland-client wayland-cursor wayland-egl
WANTLIB += xkbcommon

SITES =			https://github.com/libsdl-org/SDL/releases/download/release-${V}/

MODULES =		devel/cmake
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib -L${X11BASE}/lib -liconv

LIB_DEPENDS =		converters/libiconv \
			wayland/wayland \
			x11/xkbcommon

CONFIGURE_ARGS =	-DSDL_ALSA=OFF \
			-DSDL_DBUS=OFF \
			-DSDL_HIDAPI=OFF \
			-DSDL_INSTALL=ON \
			-DSDL_JACK=OFF \
			-DSDL_LIBUDEV=OFF \
			-DSDL_PIPEWIRE=OFF \
			-DSDL_PULSEAUDIO=OFF \
			-DSDL_SNDIO_SHARED=OFF \
			-DSDL_VULKAN=ON \
			-DSDL_WAYLAND=ON \
			-DSDL_WAYLAND_SHARED=OFF \
			-DSDL_X11_SHARED=OFF

# building tests adds build dependency on graphics/ffmpeg
CONFIGURE_ARGS +=	-DSDL_TESTS=OFF

CFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include

.include <bsd.port.mk>
