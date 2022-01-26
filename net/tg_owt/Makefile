# $OpenBSD: Makefile,v 1.3 2022/01/26 19:25:54 kn Exp $

# CMake Warning at cmake/arch.cmake:114 (message):
#   Unsupported CPU architecture.
# ...
# ${WRKSRC}/src/common_audio/wav_header.cc:30:2:
#   error: #error "Code not working properly for big endian platforms."
NOT_FOR_ARCHS =		${BE_ARCHS}

COMMENT =		WebRTC build for Telegram

GH_ACCOUNT =		desktop-app
GH_PROJECT =		tg_owt
# no releases or tags, use latest master
GH_COMMIT =		6372a0848f8dd84013e291b44f9d1427fde3a90e
DISTNAME =		${GH_PROJECT}-0.0.0.20220123
CATEGORIES =		net

SHARED_LIBS =		tg_owt	0.0	# 0.0.0

# Fetch bundles/submodules missing from the tarball, see ${WRKSRC}/.gitmodules
#
# clone of https://chromium.googlesource.com/libyuv/libyuv which has no releases
# or tags, main/master/stable/<commit> tarballs are *unstable*;
# use Andrew's mirror to get stable tarballs for latest master
MASTER_SITES0 =		https://github.com/noiseless/libyuv/archive/
LIBYUV_COMMIT =		78625492cb0ff43faebbb6cb6db2209cd4ccb785
LIBYUV_DISTNAME =	libyuv-20211214-${LIBYUV_COMMIT:C/(........).*/\1/}
DISTFILES =		${GH_DISTFILE} \
			${LIBYUV_DISTNAME}{${LIBYUV_COMMIT}}.tar.gz:0
EXTRACT_CASES =		${LIBYUV_DISTNAME}.tar.gz) ${TAR} -xz \
			    -f ${FULLDISTDIR}/$$archive \
			    -C ${WRKSRC}/src/third_party/ \
			    -s ,^libyuv-${LIBYUV_COMMIT},libyuv, ;;

MASTER_SITES1 =		https://github.com/desktop-app/tg_owt/commit/
# Pending "video_capture: Use correct V4L2 header on OpenBSD"
# https://github.com/desktop-app/tg_owt/pull/81
PATCHFILES +=		v4l2-header-fix-{}00102649.patch:1
# Pending "Build on OpenBSD" https://github.com/desktop-app/tg_owt/pull/79
PATCHFILES +=		libusrsctp-recognise-os-{}829ddb38.patch:1
PATCHFILES +=		libwebrtc-recognise-os-{}fca819e7.patch:1
PATCHFILES +=		rtc_base-endianness-{}79c6ffeb.patch:1
PATCHFILES +=		rtc_base-pthread-{}8207a87c.patch:1
# Pending "Defer third-party source handling to when it is needed"
# https://github.com/desktop-app/tg_owt/pull/85
PATCHFILES +=		defer-third-party-sources-{}bf55efe3.patch:1
# Pending "Fix TG_OWT_USE_PIPEWIRE=OFF build (on unix systems without Pipewire)"
# https://github.com/desktop-app/tg_owt/pull/86
PATCHFILES +=		tg_owt-fix-build-without-pipewire-{}4263c7b7.patch:1

# Pending "Bundled libsrtp 2.2.0 will require LibreSSL fix to build"
# https://github.com/desktop-app/tg_owt/issues/84
# https://github.com/cisco/libsrtp/pull/593
MASTER_SITES2 =		https://github.com/cisco/libsrtp/commit/
PATCHFILES +=		tg_owt-libsrtp-fix-libressl-build-{}16483b1.patch:2
PATCH_CASES +=		tg_owt-libsrtp-*.patch) \
				${PATCH} ${PATCH_DIST_ARGS} < $$patchfile \
				    -d ${WRKSRC}/src/third_party/libsrtp ;;

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
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl jpeg m openh264 opus protobuf
WANTLIB += ssl swresample swscale usrsctp vpx

# C++17 set below, some components use -std=gnu++20
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python
MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/yasm

LIB_DEPENDS =		audio/opus \
			devel/abseil-cpp \
			devel/gettext,-runtime \
			devel/glib2 \
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
# devel/abseil-cpp is found but it's include path is not picked up
CXXFLAGS +=		-I/usr/local/include

NO_TEST =		Yes

# audio/rnnoise but tg_owt ships Google's C++ rewrite (part of libwebrtc)
NEEDED_BUNDLES +=	rnnoise
# security/libsrtp is too new and tg_owt does not support it as system library
NEEDED_BUNDLES +=	libsrtp
# unported and required
NEEDED_BUNDLES +=	libyuv pffft

post-extract:
	@echo All bundles:
	@cd ${WRKSRC}/src/third_party/ && ls -x
	@echo 'Needed bundles (others are removed to prevent accidential use):'
	@cd ${WRKSRC}/src/third_party/ && mkdir .need && \
	    mv ${NEEDED_BUNDLES} .need/ && rm -rf -- ./* && mv .need/* . && ls -x
	# all source headers get packaged, so remove those not needed at
	# build-time by tg_owt and tdesktop
	cd ${WRKSRC}/src/ && rm -fr -- \
	    base/android/ \
	    modules/deskop_capture/{mac,win}/ \
	    sdk/{android,objc}/

post-install:
	# remove more sources not needed to build tdeskop, they are however
	# required at tg_owt configure-time even though they are not built, see
	# nice_target_sources()/remove_target_sources() calls in CMakeLists.txt
	cd ${PREFIX}/include/tg_owt/ && rm -fr -- \
	    modules/audio_device/{android,mac,win}/ \
	    modules/video_capture/windows/ \
	    rtc_base/{win/,win32*.h}

.include <bsd.port.mk>
