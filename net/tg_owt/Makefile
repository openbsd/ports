# CMake Warning at cmake/arch.cmake:114 (message):
#   Unsupported CPU architecture.
# ...
# ${WRKSRC}/src/common_audio/wav_header.cc:30:2:
#   error: #error "Code not working properly for big endian platforms."
# i386: no need to build tg_owt as long as net/desktop fails to build
NOT_FOR_ARCHS =		${BE_ARCHS} i386

COMMENT =		WebRTC build for Telegram

GH_ACCOUNT =		desktop-app
GH_PROJECT =		tg_owt
# no releases or tags, use latest master
GH_COMMIT =		621f3da55331733bf0d1b223786b96b68c03dca1
DISTNAME =		${GH_PROJECT}-0.0.0.20220909
DISTFILES =		${GH_DISTFILE}
CATEGORIES =		net
REVISION =		0

DEBUG_PACKAGES =	${BUILD_PACKAGES}

SHARED_LIBS =		tg_owt	4.0	# 0.0.0

DIST_SUBDIR =		tg_owt
# Fetch bundles/submodules missing from the tarball, see ${WRKSRC}/.gitmodules
#
# https://chromium.googlesource.com/libyuv/libyuv clone, no releases or tags
# main/master/stable/<commit> tarballs are *not reproducible*
# use Andrew's mirror to get stable tarballs for latest master
MASTER_SITES0 =		https://github.com/noiseless/libyuv/archive/
LIBYUV_COMMIT =		3e38ce50589d9319badc0501f96d6c5b2b177472
DISTFILES +=		libyuv-20220817-{}${LIBYUV_COMMIT}${EXTRACT_SUFX}:0

# no releases but old tags, use latest HEAD
MASTER_SITES2 =		https://github.com/google/crc32c/archive/
CRC32C_COMMIT =		21fc8ef30415a635e7351ffa0e5d5367943d4a94
DISTFILES +=		crc32c-20220208-{}${CRC32C_COMMIT}${EXTRACT_SUFX}:2

MASTER_SITES1 =		https://github.com/desktop-app/tg_owt/commit/
# Pending "Defer third-party source handling to when it is needed"
# https://github.com/desktop-app/tg_owt/pull/85
PATCHFILES +=		defer-third-party-sources-{}f95ce167.patch:1
# Pending "libabsl: Use system include directories"
# https://github.com/desktop-app/tg_owt/pull/87
PATCHFILES +=		libabsl-use-includes-{}fb12b4bd.patch:1
# Pending "libsrtp: Merge upstream LibreSSL fix"
# https://github.com/desktop-app/tg_owt/pull/93
PATCHFILES +=		libsrtp-libressl-fix-{}531dd25e.patch:1

PATCH_DIST_STRIP =	-p1

MAINTAINER =		Andrew Krasavin <noiseless-ak@yandex.ru>, \
			Klemens Nanni <kn@openbsd.org>

# tg_owt, libsrtp, libyuv, rnnoise, crc32c: BSD 3-clause;  pffft: FFTPACKv5
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xdamage Xext Xfixes
WANTLIB += Xrandr Xrender Xtst absl_bad_optional_access absl_bad_variant_access
WANTLIB += absl_base absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB += absl_debugging_internal absl_demangle_internal absl_exponential_biased
WANTLIB += absl_flags absl_flags_commandlineflag absl_flags_commandlineflag_internal
WANTLIB += absl_flags_config absl_flags_internal absl_flags_marshalling
WANTLIB += absl_flags_parse absl_flags_private_handle_accessor
WANTLIB += absl_flags_program_name absl_flags_reflection absl_flags_usage
WANTLIB += absl_flags_usage_internal absl_graphcycles_internal
WANTLIB += absl_hash absl_hashtablez_sampler absl_int128 absl_log_severity
WANTLIB += absl_low_level_hash absl_malloc_internal absl_raw_hash_set
WANTLIB += absl_raw_logging_internal absl_spinlock_wait absl_stacktrace
WANTLIB += absl_str_format_internal absl_strings absl_strings_internal
WANTLIB += absl_symbolize absl_synchronization absl_throw_delegate
WANTLIB += absl_time absl_time_zone avcodec avformat avutil crypto
WANTLIB += jpeg m openh264 opus protobuf ssl swresample swscale vpx

# C++20
COMPILER =		base-clang ports-gcc

# precompiled headers need this to be cached, see ccache(1) PRECOMPILED HEADERS
# CCACHE_ENV +=		CCACHE_SLOPPINESS=pch_defines,time_macros

MODULES =		devel/cmake \
			lang/python
MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/yasm

LIB_DEPENDS =		audio/opus \
			devel/abseil-cpp \
			devel/protobuf \
			graphics/ffmpeg \
			graphics/jpeg \
			multimedia/libvpx>=1.10.0 \
			multimedia/openh264>=2.1.1p0

# look for system libraries and build a shared library, despite upstream
# treating it as "community effort" with less support
CONFIGURE_ARGS +=	-DTG_OWT_PACKAGED_BUILD=ON \
			-DBUILD_SHARED_LIBS=ON

# Pending "Do not use PipeWire on OpenBSD"
# https://github.com/desktop-app/tg_owt/pull/103
CONFIGURE_ARGS +=	-DTG_OWT_USE_PIPEWIRE=OFF

.if ${MACHINE_ARCH} == arm
CONFIGURE_ARGS +=	-DTG_OWT_ARCH_ARMV7_USE_NEON=OFF
.endif

NO_TEST =		Yes

# audio/rnnoise but tg_owt ships Google's C++ rewrite (part of libwebrtc)
NEEDED_BUNDLES +=	rnnoise
# security/libsrtp is too new and tg_owt does not support it as system library
NEEDED_BUNDLES +=	libsrtp
# unported and required
NEEDED_BUNDLES +=	libyuv pffft crc32c

THIRD_SRC =		${WRKSRC}/src/third_party

post-extract:
	# hook up prefetched submodules
	rmdir ${THIRD_SRC}/{crc32c/src,libyuv}
	mv ${WRKDIR}/crc32c-${CRC32C_COMMIT} ${THIRD_SRC}/crc32c/src
	mv ${WRKDIR}/libyuv-${LIBYUV_COMMIT} ${THIRD_SRC}/libyuv
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
	    third_party/{libsrtp,rnnoise,pffft,crc32c}
	find ${PREFIX}/include/tg_owt/ -type d -name test -exec rm -r -- {} +

.include <bsd.port.mk>
