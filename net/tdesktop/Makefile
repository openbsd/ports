# the MTProto implementation does not support big-endian
# https://github.com/telegramdesktop/tdesktop/issues/3167#issuecomment-658308298
# build uses too much memory on i386 (noticed in calls_group_menu.cpp)
NOT_FOR_ARCHS =		${BE_ARCHS} i386

COMMENT =		Telegram Desktop messenger
PORTROACH =		limit:-full$$
V =			4.3.3
DISTNAME =		tdesktop-${V}-full
PKGNAME =		${DISTNAME:-full=}
CATEGORIES =		net

DPB_PROPERTIES =	parallel

DEBUG_PACKAGES =	${BUILD_PACKAGES}

HOMEPAGE =		https://desktop.telegram.org
MASTER_SITES =		https://github.com/telegramdesktop/tdesktop/releases/download/v${V}/

MAINTAINER =		Andrew Krasavin <noiseless-ak@yandex.ru>, \
			Klemens Nanni <kn@openbsd.org>

# tdesktop: GPLv3 with OpenSSL exception; minizip: zlib; tgcalls: LGPL 3
# rlottie: LGPL 2.1 with freetype, LGPL, MIT, BSD dependencies
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Svg Qt6Widgets absl_strings
WANTLIB += avcodec avformat avutil c crypto dispatch gio-2.0 giomm-2.68
WANTLIB += glib-2.0 glibmm-2.68 gobject-2.0 hunspell-1.7 jpeg lz4
WANTLIB += m openal qrcodegencpp rnnoise sigc-3.0 swresample swscale
WANTLIB += tg_owt xcb xcb-keysyms xcb-record xcb-screensaver xxhash
WANTLIB += z

# C++20
COMPILER =		base-clang ports-gcc

# precompiled headers need this to be cached, see ccache(1) PRECOMPILED HEADERS
# CCACHE_ENV +=		CCACHE_SLOPPINESS=pch_defines,time_macros

MODULES =		devel/cmake \
			lang/python \
			x11/qt6
MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/microsoft-gsl \
			devel/range-v3>=0.11.0p0 \
			devel/tl-expected

LIB_DEPENDS =		archivers/lz4 \
			audio/rnnoise \
			audio/openal \
			devel/abseil-cpp \
			devel/glib2 \
			devel/glibmm268 \
			devel/libdispatch \
			devel/libsigc++30 \
			graphics/ffmpeg \
			graphics/qr-code-generator>=1.7.0p1 \
			net/tg_owt>=0.0.0.20220909 \
			sysutils/xxhash \
			textproc/hunspell \
			x11/qt6/qt5compat \
			x11/qt6/qtsvg

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			x11/qt6/qtimageformats

# look for system libraries and build a shared library, despite upstream
# treating it as "community effort" with less support
CONFIGURE_ARGS +=	-DDESKTOP_APP_USE_PACKAGED=ON

# Follow suit with most other distribution packages, i.e. use the token from
# Telegram's official Snap package
# https://github.com/telegramdesktop/tdesktop/issues/17435
CONFIGURE_ARGS +=	-DTDESKTOP_API_ID=611335 \
			-DTDESKTOP_API_HASH=d524b414d21f4d37f08684c1df41ac9c

# disable unported/unwanted components
CONFIGURE_ARGS +=	-DDESKTOP_APP_DISABLE_JEMALLOC=ON \
			-DDESKTOP_APP_DISABLE_WAYLAND_INTEGRATION=ON

# Since cmake 3.25.1, BSDs are no longer recognised as Linux (in this port).
# Upstream should probably become BSD aware, but until that happens,
# pretend we're Linux to keep building...
CONFIGURE_ARGS +=	-DLINUX=true

NO_TEST =		Yes

# archivers/minizip is minizip-ng, telegram requires incompatible original zlib
NEEDED_BUNDLES +=	minizip
# fix Telegram/ThirdParty/minizip/ioapi.c build: off_t is always 64 bit,
# no need for ftello64()
# fixed in zlib 1.2.13 (40c5a9bc06c5b0746aab270971c8cc546e3d5fc7)
CFLAGS +=		-DIOAPI_NO_64

# unported and required
NEEDED_BUNDLES +=	rlottie tgcalls

# exist under Qt5-only devel/kf5/
NEEDED_BUNDLES +=	kcoreaddons sonnet

post-patch:
	# XXX fix the following on every source file
	# warning: unknown warning option '-Wno-maybe-uninitialized'
	# warning: argument unused during compilation: '-fstack-clash-protection'
	sed -i -e /-Wno-maybe-uninitialized/d -e /-fstack-clash-protection/d \
	    ${WRKSRC}/cmake/options_linux.cmake

post-extract:
	# All bundles:
	@cd ${WRKSRC}/Telegram/ThirdParty/ && ls -x
	# Needed bundles (others are removed to prevent accidential use):
	@cd ${WRKSRC}/Telegram/ThirdParty/ && mkdir .need/ && \
		mv ${NEEDED_BUNDLES} .need/ && rm -fr -- ./* && \
		mv .need/* . && rmdir .need/ && ls -x

.include <bsd.port.mk>
