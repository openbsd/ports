COMMENT =	fast and easy-to-use status bar
V =		3.7.1
DISTNAME =	polybar-$V
CATEGORIES =	x11
REVISION =	0

HOMEPAGE =	https://polybar.github.io/
MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} lib/inotify/inotify
WANTLIB += c cairo curl fontconfig freetype intl m mpdclient
WANTLIB += pulse xcb xcb-composite xcb-cursor xcb-ewmh xcb-icccm
WANTLIB += xcb-image xcb-randr xcb-util xcb-xkb xcb-xrm jsoncpp uv

SITES =		https://github.com/polybar/polybar/releases/download/$V/
EXTRACT_SUFX =	.tar.gz

# C++14
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

DEBUG_PACKAGES =${BUILD_PACKAGES}

BUILD_DEPENDS =	${RUN_DEPENDS} \
		textproc/py-sphinx${MODPY_FLAVOR}>=4.0.2 \
		x11/i3

LIB_DEPENDS =	audio/libmpdclient \
		audio/pulseaudio \
		devel/jsoncpp \
		devel/libinotify \
		devel/libuv \
		graphics/cairo \
		net/curl

RUN_DEPENDS =	x11/py-xcbgen${MODPY_FLAVOR} \
		fonts/siji \
		fonts/unifont

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib -lintl \
			-L${LOCALBASE}/lib/inotify -linotify \
			-Wl,-rpath,${LOCALBASE}/lib/inotify

CONFIGURE_ARGS =	-DENABLE_CCACHE=OFF \
			-DENABLE_I3=ON \
			-DCMAKE_INSTALL_PREFIX="${PREFIX}"

NO_TEST =	Yes

post-install:
	mv ${PREFIX}/etc/polybar ${PREFIX}/share/examples/polybar
	rmdir ${PREFIX}/etc/

.include <bsd.port.mk>
