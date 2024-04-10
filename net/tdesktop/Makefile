# the MTProto implementation does not support big-endian
# https://github.com/telegramdesktop/tdesktop/issues/3167#issuecomment-658308298
# build uses too much memory on i386 (noticed in calls_group_menu.cpp)
NOT_FOR_ARCHS =		${BE_ARCHS} i386

COMMENT =		Telegram Desktop messenger
PORTROACH =		limit:-full$$
V =			4.16.6
DISTNAME =		tdesktop-${V}-full
PKGNAME =		${DISTNAME:-full=}
CATEGORIES =		net

DPB_PROPERTIES =	parallel

# XXX CMake fails to install the binary during fake under debug builds:
#   No valid ELF RPATH or RUNPATH entry exists in the file;
#DEBUG_PACKAGES =	${BUILD_PACKAGES}

HOMEPAGE =		https://desktop.telegram.org
SITES =			https://github.com/telegramdesktop/tdesktop/releases/download/v${V}/

MAINTAINER =		Andrew Krasavin <noiseless-ak@yandex.ru>, \
			Klemens Nanni <kn@openbsd.org>

# tdesktop:		GPLvj with OpenSSL exception
# GSL:			MIT
# cld3:			Apache 2.0
# kcoreaddons:		LGPL 2.1+, GPL 2+
# libprisma:		MIT
# libtgvoip:		unlicense/public domain
# minizip:		zlib
# rlottie:		LGPL 2.1 with freetype, LGPL, MIT, BSD dependencies
# tgcalls:		LGPL 3
# xdg-desktop-portal:	LGPL 2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Qml Qt6Quick Qt6QuickWidgets
WANTLIB += Qt6Svg Qt6WaylandCompositor Qt6Widgets absl_strings
WANTLIB += avcodec avfilter avformat avutil c crypto dispatch
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 hunspell-1.7 jpeg lz4
WANTLIB += m openal opus protobuf-lite qrcodegencpp rnnoise swresample
WANTLIB += swscale tg_owt xcb xcb-keysyms xcb-record xcb-screensaver
WANTLIB += xxhash z

# C++20
COMPILER =		base-clang ports-gcc

# precompiled headers need this to be cached, see ccache(1) PRECOMPILED HEADERS
# CCACHE_ENV +=		CCACHE_SLOPPINESS=pch_defines,time_macros

MODULES =		devel/cmake \
			lang/python \
			x11/qt6
MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/boost,-main \
			devel/crc32c \
			devel/fmt \
			devel/gobject-introspection \
			devel/range-v3>=0.11.0p0 \
			devel/tl-expected

# libtgvoip expects either ALSA or PulseAudio to be present, we build against
# PulseAudio, but nothing in tdesktop then actually links against it.
#
# This should probably be patched out upstream so that libtgvoip builds with
# OpenAL alone...
BUILD_DEPENDS +=	audio/pulseaudio \
			devel/protobuf

LIB_DEPENDS =		archivers/lz4 \
			audio/openal \
			audio/opus \
			audio/rnnoise \
			devel/abseil-cpp \
			devel/glib2>=2.78.0 \
			devel/libdispatch \
			graphics/ffmpeg \
			graphics/jpeg \
			graphics/qr-code-generator>=1.7.0p1 \
			net/tg_owt>=0.0.0.20231101 \
			sysutils/xxhash \
			textproc/hunspell \
			x11/qt6/qtdeclarative \
			x11/qt6/qtsvg \
			x11/qt6/qtwayland

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic \
			x11/qt6/qtimageformats

# look for system libraries and link them dynamically, despite upstream
# treating it as "community effort" with less support
CONFIGURE_ARGS +=	-DDESKTOP_APP_USE_PACKAGED=ON

# Follow suit with most other distribution packages, i.e. use the token from
# Telegram's official Snap package
# https://github.com/telegramdesktop/tdesktop/issues/17435
CONFIGURE_ARGS +=	-DTDESKTOP_API_ID=611335 \
			-DTDESKTOP_API_HASH=d524b414d21f4d37f08684c1df41ac9c

# disable unported/unwanted components
CONFIGURE_ARGS +=	-DDESKTOP_APP_DISABLE_JEMALLOC=ON \
			-DDESKTOP_APP_DISABLE_WAYLAND_INTEGRATION=ON \
			-DLIBTGVOIP_DISABLE_ALSA=ON

# Since cmake 3.25.1, BSDs are no longer recognised as Linux (in this port).
# Upstream should probably become BSD aware, but until that happens,
# pretend we're Linux to keep building...
CONFIGURE_ARGS +=	-DLINUX=true

NO_TEST =		Yes

# unported and required
NEEDED_BUNDLES =	cld3 libprisma libtgvoip rlottie tgcalls

# archivers/minizip is minizip-ng, telegram requires incompatible original zlib
NEEDED_BUNDLES +=	minizip

# exist under Qt5-only devel/kf5/
NEEDED_BUNDLES +=	kcoreaddons

# tdesktop 4.9.5 forced bundled GSL due to libstdc++ and CMake bugs
NEEDED_BUNDLES +=	GSL

# ported but CMake code hardcodes bundled file paths
NEEDED_BUNDLES +=	xdg-desktop-portal

post-extract:
	# All bundles:
	@cd ${WRKSRC}/Telegram/ThirdParty/ && ls -x
	# Needed bundles (others are removed to prevent accidential use):
	@cd ${WRKSRC}/Telegram/ThirdParty/ && mkdir .need/ && \
		mv ${NEEDED_BUNDLES} .need/ && rm -fr -- ./* && \
		mv .need/* . && rmdir .need/ && ls -x

post-patch:
	# XXX fix the following on every source file
	# warning: unknown warning option '-Wno-maybe-uninitialized'
	# warning: argument unused during compilation: '-fstack-clash-protection'
	sed -i -e /-Wno-maybe-uninitialized/d -e /-fstack-clash-protection/d \
	    ${WRKSRC}/cmake/options_linux.cmake

.include <bsd.port.mk>
