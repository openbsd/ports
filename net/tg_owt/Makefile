# $OpenBSD: Makefile,v 1.12 2022/02/13 21:21:02 kn Exp $

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
GH_COMMIT =		d618d0b5ff3e59bea0143e6070481f8f4316a428
DISTNAME =		${GH_PROJECT}-0.0.0.20220202
REVISION =		1
CATEGORIES =		net

SHARED_LIBS =		tg_owt	1.1	# 0.0.0

# Fetch bundles/submodules missing from the tarball, see ${WRKSRC}/.gitmodules
#
# clone of https://chromium.googlesource.com/libyuv/libyuv which has no releases
# or tags, main/master/stable/<commit> tarballs are *unstable*;
# use Andrew's mirror to get stable tarballs for latest master
MASTER_SITES0 =		https://github.com/noiseless/libyuv/archive/
LIBYUV_COMMIT =		804980bbab748fd0e180cd6e7d9292ff49baf704
LIBYUV_DISTNAME =	libyuv-20220131-${LIBYUV_COMMIT:C/(........).*/\1/}
DISTFILES =		${GH_DISTFILE} \
			${LIBYUV_DISTNAME}{${LIBYUV_COMMIT}}.tar.gz:0
EXTRACT_CASES =		${LIBYUV_DISTNAME}.tar.gz) ${TAR} -xz \
			    -f ${FULLDISTDIR}/$$archive \
			    -C ${WRKSRC}/src/third_party/ \
			    -s ,^libyuv-${LIBYUV_COMMIT},libyuv, ;;

MASTER_SITES1 =		https://github.com/desktop-app/tg_owt/commit/
# Pending "video_capture: Use correct V4L2 header on OpenBSD"
# https://github.com/desktop-app/tg_owt/pull/81
PATCHFILES +=		tg_owt-v4l2-header-fix-{}00102649.patch:1
# Pending "Build on OpenBSD" https://github.com/desktop-app/tg_owt/pull/79
PATCHFILES +=		tg_owt-libwebrtc-recognise-os-{}fca819e7.patch:1
PATCHFILES +=		tg_owt-rtc_base-endianness-{}79c6ffeb.patch:1
PATCHFILES +=		tg_owt-rtc_base-pthread-{}8207a87c.patch:1
# Pending "Defer third-party source handling to when it is needed"
# https://github.com/desktop-app/tg_owt/pull/85
PATCHFILES +=		tg_owt-defer-third-party-sources-{}bf55efe3.patch:1
# Pending "libabsl: Use system include directories"
# https://github.com/desktop-app/tg_owt/pull/87
PATCHFILES +=		tg_owt-libabsl-use-includes-{}fb12b4bd.patch:1

# Pending "Bundled libsrtp 2.2.0 will require LibreSSL fix to build"
# https://github.com/desktop-app/tg_owt/issues/84
# https://github.com/cisco/libsrtp/pull/593 (merged upstream)
MASTER_SITES2 =		https://github.com/cisco/libsrtp/commit/
PATCHFILES +=		tg_owt-libsrtp-fix-libressl-build-{}16483b1.patch:2
PATCH_CASES +=		tg_owt-libsrtp-*.patch) ${PATCH} ${PATCH_DIST_ARGS} \
			    -d ${WRKSRC}/src/third_party/libsrtp <$$patchfile ;;

PATCH_DIST_STRIP =	-p1

MAINTAINER =		Andrew Krasavin <noiseless-ak@yandex.ru>, \
			Klemens Nanni <kn@openbsd.org>

# tg_owt, libsrtp, libyuv, rnnoise: BSD 3-clause;  pffft: FFTPACKv5
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
WANTLIB += jpeg m openh264 opus protobuf ssl swresample swscale
WANTLIB += usrsctp vpx

# C++17 set below, some components use -std=gnu++20
COMPILER =		base-clang ports-gcc

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
			multimedia/openh264>=2.1.1p0 \
			net/usrsctp>=0.9.5.0p2

# look for system libraries and build a shared library, despite upstream
# treating it as "community effort" with less support
CONFIGURE_ARGS +=	-DTG_OWT_PACKAGED_BUILD=ON \
			-DBUILD_SHARED_LIBS=ON

# do not use unported pipewire for desktop capture (or anything else)
CONFIGURE_ARGS +=	-DTG_OWT_USE_PIPEWIRE=OFF

# match standard version with abseil
CONFIGURE_ARGS +=	-DCMAKE_CXX_STANDARD=17

NO_TEST =		Yes

# audio/rnnoise but tg_owt ships Google's C++ rewrite (part of libwebrtc)
NEEDED_BUNDLES +=	rnnoise
# security/libsrtp is too new and tg_owt does not support it as system library
NEEDED_BUNDLES +=	libsrtp
# unported and required
NEEDED_BUNDLES +=	libyuv pffft

.ifndef DEBUG
INSTALL_TARGET =	install/strip
.endif

post-extract:
	# All bundles:
	@cd ${WRKSRC}/src/third_party/ && ls -x
	# Needed bundles (others are removed to prevent accidential use):
	@cd ${WRKSRC}/src/third_party/ && mkdir .need/ && \
		mv ${NEEDED_BUNDLES} .need/ && rm -r -- ./* && \
		mv .need/* . && rmdir .need/ && ls -x
	# all source headers get packaged, so remove those not needed at
	# build-time by tg_owt and tdesktop
	cd ${WRKSRC}/src/ && rm -r -- \
	    sdk/{android,objc}/

post-install:
	# remove more sources not needed to build tdesktop, they are however
	# required at tg_owt configure-time even though they are not built, see
	# nice_target_sources()/remove_target_sources() calls in CMakeLists.txt
	cd ${PREFIX}/include/tg_owt/ && rm -r -- \
	    modules/audio_device/{android,mac,win}/ \
	    modules/desktop_capture/{mac,win}/ \
	    modules/video_capture/windows/ \
	    rtc_base/{win/,win32*.h}
	# remove bundled sources not needed to build tdesktop
	cd ${PREFIX}/include/tg_owt/ && rm -r -- \
	    third_party/{libsrtp,rnnoise,pffft}

.include <bsd.port.mk>
