COMMENT =	wscons(4) and kqueue(2) based port of libinput

CATEGORIES =	x11 wayland

GH_ACCOUNT =	sizeofvoid
GH_PROJECT =	libopeninput
GH_COMMIT =	26b7c6bc8b79f2fbc8c58e01d3432ffd7e346d8d

DISTNAME =	libinput-openbsd-1.24.0

SHARED_LIBS =	input	0.0

WANTLIB += epoll-shim m udev

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	devel/meson \
		lang/python

LIB_DEPENDS =	devel/epoll-shim \
		sysutils/libudev-openbsd

CONFIGURE_ARGS =	-Dlibwacom=false \
			-Ddocumentation=false

# XXX debugging
CFLAGS =		-O0 -g

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
