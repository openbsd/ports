# No Big Endian support
NOT_FOR_ARCHS=	${BE_ARCHS}

COMMENT=	free audio editor

V=		4.0.1
DISTNAME=	audacity-sources-${V}
EXTRACT_SUFX=	.tar.xz
PKGNAME=	audacity-${V}

WRKDIST=	${WRKDIR}/audacity-${V}

CATEGORIES=	audio

HOMEPAGE=	https://www.audacityteam.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC FLAC++ GL Qt6Concurrent Qt6Core
WANTLIB += Qt6Core5Compat Qt6Gui Qt6Network Qt6NetworkAuth Qt6OpenGL
WANTLIB += Qt6Qml Qt6Quick Qt6QuickControls2 Qt6Svg Qt6Widgets
WANTLIB += SoundTouch c expat freetype harfbuzz m mp3lame mpg123
WANTLIB += ogg opus opusfile portaudio pugixml sndfile soxr sqlite3
WANTLIB += twolame vorbis vorbisenc vorbisfile wavpack wx_baseu-3.2
WANTLIB += xkbcommon z
# dlopened; muse/framework/media/internal/ffmpegutils.cpp
WANTLIB += avcodec avformat avutil swresample swscale

SITES=		https://github.com/audacity/audacity/releases/download/Audacity-${V}/

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake \
		lang/python \
		x11/qt6

MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/utfcpp \
		textproc/rapidjson \
		x11/qt6/qtshadertools

LIB_DEPENDS=	audio/flac \
		audio/lame \
		audio/libsndfile \
		audio/libsoxr \
		audio/libvorbis \
		audio/opusfile \
		audio/portaudio-svn \
		audio/soundtouch \
		audio/twolame \
		audio/wavpack \
		graphics/ffmpeg \
		textproc/pugixml \
		x11/qt6/qt5compat \
		x11/qt6/qtnetworkauth \
		x11/wxWidgets

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

CONFIGURE_ARGS=	-DEXTDEPS_OVERRIDE_ALL=SYSTEM \
		-DEXTDEPS_CACHE=${MUSE_DEPS_CACHE} \
		-DAU_MODULE_EFFECTS_VST=OFF \
		-DAU4_BUILD_MODE=release \
		-DMUSE_ENABLE_UNIT_TESTS=OFF \
		-DMUSE_COMPILE_USE_CCACHE=OFF

# disable portmixer that requires Pa_GetStreamHostApiType which our
# audio/portaudio does not provide
CONFIGURE_ARGS +=	-DAU_USE_PORTMIXER=OFF

### external sources ###########################################################
MUSE_DEPS_TAG=		deps-20260817-100754
SITES.deps=		https://github.com/musescore/muse_deps/releases/download/${MUSE_DEPS_TAG}/
DISTFILES.deps=		nyquist-r331-src.zip \
			pffft-0979688-src.tar.gz \
			picojson-111c9be-src.tar.gz \
			sbsms-2.2.0-src.tar.gz \
			tft-0.5-src.tar.gz

SITES.lte=		https://github.com/saintmatthieu/loop-tempo-estimator/releases/download/v0.0.5/
DISTFILES.lte=		loop-tempo-estimator-v0.0.5.tar.gz

MUSE_DEPS_CACHE=	${WRKDIR}/extdeps-cache
MUSE_DEPS_MAP=		loop-tempo-estimator-v0.0.5.tar.gz:loop-tempo-estimator/loop-tempo-estimator-v0.0.5.tar.gz \
			nyquist-r331-src.zip:nyquist/nyquist-code-r331-trunk.zip \
			pffft-0979688-src.tar.gz:pffft/09796885cd5b.tar.gz \
			picojson-111c9be-src.tar.gz:picojson/111c9be5188f7350c2eac9ddaedd8cca3d7bf394.tar.gz \
			sbsms-2.2.0-src.tar.gz:sbsms/2.2.0.tar.gz \
			tft-0.5-src.tar.gz:tft/1d96301673ebc05fa09a7bd505eacd82ee0fea33.tar.gz

EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}
# git apply (patches)
BUILD_DEPENDS +=	devel/git

post-extract:
.for m in ${MUSE_DEPS_MAP}
	${INSTALL_DATA_DIR} ${MUSE_DEPS_CACHE}/downloads/${m:C/^[^:]*://:H}
	ln -sf ${FULLDISTDIR}/${m:C/:.*//} \
		${MUSE_DEPS_CACHE}/downloads/${m:C/^[^:]*://}
.endfor
################################################################################

post-install:
# no need for more copies of GPLv2 and GPLv3
	rm -r ${PREFIX}/licenses

.include <bsd.port.mk>
