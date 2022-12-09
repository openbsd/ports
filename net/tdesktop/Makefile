# the MTProto implementation does not support big-endian
# https://github.com/telegramdesktop/tdesktop/issues/3167#issuecomment-658308298
# build uses too much memory on i386 (noticed in calls_group_menu.cpp)
NOT_FOR_ARCHS =		${BE_ARCHS} i386

COMMENT =		Telegram Desktop messenger
PORTROACH =		limit:-full$$
V =			4.4.1
DISTNAME =		tdesktop-${V}-full
PKGNAME =		${DISTNAME:-full=}
CATEGORIES =		net
REVISION =		0

DPB_PROPERTIES =	parallel

DEBUG_PACKAGES =	${BUILD_PACKAGES}

HOMEPAGE =		https://desktop.telegram.org
MASTER_SITES =		https://github.com/telegramdesktop/tdesktop/releases/download/v${V}/

DIST_SUBDIR =		tdesktop
MASTER_SITES0 =		https://github.com/desktop-app/
MASTER_SITES1 =		https://github.com/telegramdesktop/

# merged "Update to minizip 1.2.13"
# https://github.com/telegramdesktop/tdesktop/pull/25537
PATCHFILES +=		upgrade-minizip-{tdesktop/pull/}25537.patch:1
# merged "Use std::invoke_result_t not ::result_of to fix C++20 tdesktop 4.3.4"
# https://github.com/telegramdesktop/tdesktop/pull/25527
PATCHFILES +=		fix-c++20-build-{tdesktop/pull/}25527.patch:1

# merged "Fix tdesktop 4.3.4 cld3 bundle build with system protobuf"
# https://github.com/desktop-app/cmake_helpers/pull/246
PATCHFILES +=		cmake-fix-cld3-protobuf-{cmake_helpers/pull/}246.patch:0
PATCH_CASES +=		cmake-*.patch) ${PATCH} ${PATCH_DIST_ARGS} \
			    -d ${WRKSRC}/cmake/ <$$patchfile ;;

# merged "Do actual check for long type size for Glib::Variant<(u)int64>"
# https://github.com/desktop-app/lib_base/pull/148
PATCHFILES +=		base-glib-check-long-type-{lib_base/pull/}148.patch:0
# merged "Use std::conditional_t for Glib::Variant<(u)int64> rather than LONG_TYPE_SIZE"
# https://github.com/desktop-app/lib_base/pull/149
PATCHFILES +=		base-glib-use-conditional-{lib_base/pull/}149.patch:0
PATCH_CASES +=		base-*.patch) ${PATCH} ${PATCH_DIST_ARGS} \
			    -d ${WRKSRC}/Telegram/lib_base/ <$$patchfile ;;

PATCH_DIST_STRIP =	-p1

MAINTAINER =		Andrew Krasavin <noiseless-ak@yandex.ru>, \
			Klemens Nanni <kn@openbsd.org>

# tdesktop:	GPLv3 with OpenSSL exception
# minizip:	zlib
# tgcalls:	LGPL 3
# rlottie:	LGPL 2.1 with freetype, LGPL, MIT, BSD dependencies
# cld3:		Apache 2.0
# kcoreaddon:	LGPLv2.1+, GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Svg Qt6Widgets absl_strings
WANTLIB += avcodec avformat avutil c crypto dispatch gio-2.0 giomm-2.68
WANTLIB += glib-2.0 glibmm-2.68 gobject-2.0 hunspell-1.7 jpeg lz4
WANTLIB += m openal protobuf-lite qrcodegencpp rnnoise sigc-3.0 swresample swscale
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
			devel/protobuf \
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
			-DDESKTOP_APP_DISABLE_WAYLAND_INTEGRATION=ON

# Since cmake 3.25.1, BSDs are no longer recognised as Linux (in this port).
# Upstream should probably become BSD aware, but until that happens,
# pretend we're Linux to keep building...
CONFIGURE_ARGS +=	-DLINUX=true

NO_TEST =		Yes

# archivers/minizip is minizip-ng, telegram requires incompatible original zlib
NEEDED_BUNDLES +=	minizip

# unported and required
NEEDED_BUNDLES +=	cld3 rlottie tgcalls

# exist under Qt5-only devel/kf5/
NEEDED_BUNDLES +=	kcoreaddons

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
