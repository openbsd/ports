# CMake Warning at cmake/arch.cmake:114 (message):
#   Unsupported CPU architecture.
# ...
# ${WRKSRC}/src/common_audio/wav_header.cc:30:2:
#   error: #error "Code not working properly for big endian platforms."
# i386: no need to build tg_owt as long as net/desktop fails to build
NOT_FOR_ARCHS =		${BE_ARCHS} i386

COMMENT =		WebRTC build for Telegram

# No releases or tags, use commit from tdesktop's snap/snapcraft.yaml
# 04.08.2024 HEAD to include merged PRs
DIST_TUPLE =		github	desktop-app	tg_owt	\
			62321fd7128ab2650b459d4195781af8185e46b5	.
PKGNAME =		tg_owt-0.0.0.20250601
REVISION =		1

CATEGORIES =		net

DEBUG_PACKAGES =	${BUILD_PACKAGES}

SHARED_LIBS =		tg_owt	12.0	# upstream is static only

DIST_SUBDIR =		tg_owt
# Fetch bundles/submodules missing from the tarball, see ${WRKSRC}/.gitmodules
#
# https://chromium.googlesource.com/libyuv/libyuv clone, no releases or tags
# main/master/stable/<commit> tarballs are *not reproducible*
# use a mirror to get stable tarballs for latest master
DIST_TUPLE +=		github	klemensn	libyuv \
			20b1d84ec843d2494d47640e607325aaba810548 \
			src/third_party/libyuv

MAINTAINER =		Andrew Krasavin <noiseless-ak@yandex.ru>, \
			Klemens Nanni <kn@openbsd.org>

# tg_owt, libyuv, rnnoise: BSD 3-clause;  pffft: FFTPACKv5
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xdamage Xext Xfixes
WANTLIB += Xrandr Xrender Xtst absl_base absl_city absl_civil_time
WANTLIB += absl_cord absl_cord_internal absl_cordz_functions absl_cordz_handle
WANTLIB += absl_cordz_info absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB += absl_crc_internal absl_debugging_internal absl_decode_rust_punycode
WANTLIB += absl_demangle_internal absl_demangle_rust absl_exponential_biased
WANTLIB += absl_flags_commandlineflag absl_flags_commandlineflag_internal
WANTLIB += absl_flags_config absl_flags_internal absl_flags_marshalling
WANTLIB += absl_flags_parse absl_flags_private_handle_accessor
WANTLIB += absl_flags_program_name absl_flags_reflection absl_flags_usage
WANTLIB += absl_flags_usage_internal absl_graphcycles_internal
WANTLIB += absl_hash absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_log_severity absl_malloc_internal absl_raw_hash_set
WANTLIB += absl_raw_logging_internal absl_spinlock_wait absl_stacktrace
WANTLIB += absl_str_format_internal absl_string_view absl_strings
WANTLIB += absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone absl_tracing_internal
WANTLIB += absl_utf8_for_code_point avcodec avformat avutil crc32c
WANTLIB += crypto jpeg m openh264 opus ssl swresample swscale
WANTLIB += srtp2 vpx

# C++20
COMPILER =		base-clang ports-gcc

# precompiled headers need this to be cached, see ccache(1) PRECOMPILED HEADERS
# CCACHE_ENV +=		CCACHE_SLOPPINESS=pch_defines,time_macros

MODULES =		devel/cmake \
			lang/python
MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/yasm

LIB_DEPENDS =		audio/opus \
			devel/crc32c \
			devel/abseil-cpp>=20250127.0 \
			graphics/ffmpeg \
			graphics/jpeg \
			multimedia/libvpx>=1.10.0 \
			multimedia/openh264>=2.1.1p0 \
			security/libsrtp>=2.5.0

.if ${MACHINE_ARCH} == "aarch64"
# libyuv needs dotprod on aarch64
# See: https://github.com/desktop-app/tg_owt/pull/146
CXXFLAGS +=	       -march=armv8-a+dotprod+i8mm
.endif

# look for system libraries and build a shared library, despite upstream
# treating it as "community effort" with less support
CONFIGURE_ARGS +=	-DTG_OWT_PACKAGED_BUILD=ON \
			-DBUILD_SHARED_LIBS=ON

CONFIGURE_ARGS +=	-DTG_OWT_USE_PIPEWIRE=OFF

.if ${MACHINE_ARCH} == arm
CONFIGURE_ARGS +=	-DTG_OWT_ARCH_ARMV7_USE_NEON=OFF
.endif

NO_TEST =		Yes

# audio/rnnoise but tg_owt ships Google's C++ rewrite (part of libwebrtc)
NEEDED_BUNDLES +=	rnnoise
# unported and required
NEEDED_BUNDLES +=	libyuv pffft

THIRD_SRC =		${WRKSRC}/src/third_party

post-extract:
	# All bundles:
	@cd ${THIRD_SRC}/ && ls -x
	# Needed bundles (others are removed to prevent accidential use):
	@cd ${THIRD_SRC}/ && mkdir .need/ && \
		mv ${NEEDED_BUNDLES} .need/ && rm -r -- ./* && \
		mv .need/* . && rmdir .need/ && ls -x
	# all source headers get packaged, so remove those not needed at
	# build-time by tg_owt and tdesktop
	cd ${WRKSRC}/src/ && rm -r -- \
	    sdk/{android,objc}/
	# XXX hotpatch after abseil-cpp 20250814 update
	grep -r -l -E '::N|onnull|ullable)' ${WRKSRC}/ | xargs \
		sed -E -i 's/absl::N(onnull|ullable)<(.+)>/\2 absl_n\1/g'

post-configure:
	# remove more sources not needed to build tdesktop, they are however
	# required at tg_owt configure-time even though they are not built, see
	# nice_target_sources()/remove_target_sources() calls in CMakeLists.txt
	cd ${WRKSRC}/src/ && rm -r -- \
	    modules/audio_device/{mac,win}/ \
	    modules/desktop_capture/{mac,win,linux/wayland}/ \
	    modules/video_capture/windows/ \
	    rtc_base/{win/,win32*.h}

post-install:
	# remove bundled sources not needed to build tdesktop
	cd ${PREFIX}/include/tg_owt/ && rm -r -- \
	    third_party/{rnnoise,pffft}
	find ${PREFIX}/include/tg_owt/ -type d -name test -exec rm -r -- {} +

.include <bsd.port.mk>
