# $OpenBSD: Makefile,v 1.1.1.1 2022/01/26 19:38:06 kn Exp $

# the MTProto implementation does not support big-endian
# https://github.com/telegramdesktop/tdesktop/issues/3167#issuecomment-658308298
NOT_FOR_ARCHS =		${BE_ARCHS}

COMMENT =		Telegram Desktop messenger
V =			3.4.8
DISTNAME =		tdesktop-${V}-full
PKGNAME =		tdesktop-${V}
CATEGORIES =		net

HOMEPAGE =		https://desktop.telegram.org
MASTER_SITES =		https://github.com/telegramdesktop/tdesktop/releases/download/v${V}/

# ${WRKSRC}/Telegram/ThirdParty/hunspell/tests/suggestiontest/Makefile.orig
PATCHORIG =		.pat.orig

MAINTAINER =		Andrew Krasavin <noiseless-ak@yandex.ru>, \
			Klemens Nanni <kn@openbsd.org>

# tdesktop: GPLv3+; minizip: zlib; tgcalls: LGPL 3
# rlottie: LGPL 2.1 with freetype, LGPL, MIT, BSD dependencies
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Svg
WANTLIB += Qt5Widgets X11 absl_base absl_int128 absl_log_severity
WANTLIB += absl_raw_logging_internal absl_spinlock_wait absl_strings
WANTLIB += absl_strings_internal absl_throw_delegate avcodec avformat
WANTLIB += avutil c crypto event_core event_extra hunspell-1.7
WANTLIB += lz4 m openal qrcodegencpp rnnoise swresample swscale
WANTLIB += tg_owt usrsctp vpx xcb xcb-keysyms xcb-record xcb-screensaver
WANTLIB += xxhash z

# C++17 set below
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python \
			x11/qt5
MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/microsoft-gsl \
			devel/range-v3>=0.11.0p0 \
			devel/tl-expected

LIB_DEPENDS =		archivers/lz4 \
			audio/rnnoise \
			audio/openal \
			devel/abseil-cpp \
			devel/libevent2 \
			graphics/ffmpeg \
			graphics/qr-code-generator>=1.7.0p1 \
			net/tg_owt \
			net/usrsctp>=0.9.5.0p2 \
			sysutils/xxhash \
			textproc/hunspell \
			x11/qt5/qtsvg

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			x11/qt5/qtimageformats

# look for system libraries and build a shared library, despite upstream
# treating it as "community effort" with less support
CONFIGURE_ARGS +=	-DDESKTOP_APP_USE_PACKAGED=ON

# Follow suit with most other distribution packages, i.e. use the token from
# Telegram's official Snap package
# https://github.com/telegramdesktop/tdesktop/issues/17435
CONFIGURE_ARGS +=	-DTDESKTOP_API_ID=611335 \
			-DTDESKTOP_API_HASH=d524b414d21f4d37f08684c1df41ac9c

# disable unported/unwanted components
CONFIGURE_ARGS +=	-DDESKTOP_APP_DISABLE_WAYLAND_INTEGRATION=ON \
			-DDESKTOP_APP_DISABLE_DBUS_INTEGRATION=ON \
			-DDESKTOP_APP_QT6=OFF

# match standard version with abseil
CONFIGURE_ARGS +=	-DCMAKE_CXX_STANDARD=17 \
			-DCMAKE_EXE_LINKER_FLAGS='${LDFLAGS}'
LDFLAGS +=	`pkg-config --libs absl_strings libevent usrsctp vpx x11`
# disable use of unported dispatch library
CXXFLAGS +=		-DCRL_FORCE_QT

NO_TEST =		Yes

# archivers/minizip is minizip-ng, telegram requires incompatible original zlib
NEEDED_BUNDLES +=	minizip
# unported and required
NEEDED_BUNDLES +=	rlottie tgcalls

post-extract:
	@echo All bundles:
	@cd ${WRKSRC}/Telegram/ThirdParty/ && ls -x
	@echo 'Needed bundles (others are removed to prevent accidential use):'
	@cd ${WRKSRC}/Telegram/ThirdParty/ && mkdir .need && \
	    mv ${NEEDED_BUNDLES} .need/ && rm -rf -- ./* && mv .need/* . && ls -x

.include <bsd.port.mk>
