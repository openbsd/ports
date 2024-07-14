# CMake Warning at cmake/arch.cmake:114 (message):
#   Unsupported CPU architecture.
# ...
# ${WRKSRC}/src/common_audio/wav_header.cc:30:2:
#   error: #error "Code not working properly for big endian platforms."
# i386: no need to build tg_owt as long as net/desktop fails to build
NOT_FOR_ARCHS =		${BE_ARCHS} i386

COMMENT =		WebRTC build for Telegram

# no releases or tags, use latest master
DIST_TUPLE =		github	desktop-app	tg_owt	\
			c9cc4390ab951f2cbc103ff783a11f398b27660b	.
PKGNAME =		tg_owt-0.0.0.20240518
CATEGORIES =		net

DEBUG_PACKAGES =	${BUILD_PACKAGES}

SHARED_LIBS =		tg_owt	9.0	# upstream is static only

DIST_SUBDIR =		tg_owt
# Fetch bundles/submodules missing from the tarball, see ${WRKSRC}/.gitmodules
#
# https://chromium.googlesource.com/libyuv/libyuv clone, no releases or tags
# main/master/stable/<commit> tarballs are *not reproducible*
# use a mirror to get stable tarballs for latest master
DIST_TUPLE +=		github	klemensn	libyuv \
			04821d1e7d60845525e8db55c7bcd41ef5be9406 \
			src/third_party/libyuv

SITES.tg_owt =		https://github.com/desktop-app/tg_owt/commit/
# Pending "Defer third-party source handling to when it is needed"
# https://github.com/desktop-app/tg_owt/pull/85
PATCHFILES.tg_owt +=	defer-third-party-sources-{}a264c33.patch
# Pending "Unbundle libSRTP"
# https://github.com/desktop-app/tg_owt/pull/123
PATCHFILES.tg_owt +=	use-system-libsrtp-{}46cb0ce7.patch

PATCH_DIST_STRIP =	-p1

MAINTAINER =		Andrew Krasavin <noiseless-ak@yandex.ru>, \
			Klemens Nanni <kn@openbsd.org>

# tg_owt, libyuv, rnnoise: BSD 3-clause;  pffft: FFTPACKv5
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xdamage Xext Xfixes
WANTLIB += Xrandr Xrender Xtst absl_bad_optional_access absl_bad_variant_access
WANTLIB += absl_base absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB += absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB += absl_crc_internal absl_debugging_internal absl_demangle_internal
WANTLIB += absl_exponential_biased absl_flags_commandlineflag
WANTLIB += absl_flags_commandlineflag_internal absl_flags_config
WANTLIB += absl_flags_internal absl_flags_marshalling absl_flags_parse
WANTLIB += absl_flags_private_handle_accessor absl_flags_program_name
WANTLIB += absl_flags_reflection absl_flags_usage absl_flags_usage_internal
WANTLIB += absl_graphcycles_internal absl_hash absl_hashtablez_sampler
WANTLIB += absl_int128 absl_kernel_timeout_internal absl_log_severity
WANTLIB += absl_low_level_hash absl_malloc_internal absl_raw_hash_set
WANTLIB += absl_raw_logging_internal absl_spinlock_wait absl_stacktrace
WANTLIB += absl_str_format_internal absl_string_view absl_strings
WANTLIB += absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone avcodec
WANTLIB += avformat avutil crc32c crypto jpeg m openh264 opus
WANTLIB += protobuf srtp2 ssl swresample swscale vpx

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
			devel/abseil-cpp>=20230125.3 \
			devel/protobuf \
			graphics/ffmpeg \
			graphics/jpeg \
			multimedia/libvpx>=1.10.0 \
			multimedia/openh264>=2.1.1p0 \
			security/libsrtp>=2.5.0

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

post-configure:
	# remove more sources not needed to build tdesktop, they are however
	# required at tg_owt configure-time even though they are not built, see
	# nice_target_sources()/remove_target_sources() calls in CMakeLists.txt
	cd ${WRKSRC}/src/ && rm -r -- \
	    modules/audio_device/{android,mac,win}/ \
	    modules/desktop_capture/{mac,win,linux/wayland}/ \
	    modules/video_capture/windows/ \
	    rtc_base/{win/,win32*.h}

post-install:
	# remove bundled sources not needed to build tdesktop
	cd ${PREFIX}/include/tg_owt/ && rm -r -- \
	    third_party/{rnnoise,pffft}
	find ${PREFIX}/include/tg_owt/ -type d -name test -exec rm -r -- {} +

.include <bsd.port.mk>
