COMMENT=	free audio editor

# fosshub has proper tarballs, but they are on time-expired URLs
# so can't be fetched automatically
GH_ACCOUNT=	audacity
GH_PROJECT=	audacity
GH_TAGNAME=	Audacity-3.5.1
REVISION=	0
DISTNAME=	${GH_TAGNAME:L}

CATEGORIES=	audio

HOMEPAGE=	https://www.audacityteam.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC FLAC++ SoundTouch atk-1.0 c
WANTLIB += cairo cairo-gobject expat gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-3 harfbuzz id3tag intl lilv-0
WANTLIB += m mp3lame mpg123 ogg opus opusfile pango-1.0 pangocairo-1.0
WANTLIB += portaudio portmidi serd-0 sndfile sord-0 soxr sqlite3
WANTLIB += sratom-0 suil-0 uuid vamp-hostsdk vorbis vorbisenc
WANTLIB += vorbisfile wavpack wx_baseu-3.2 wx_baseu_net-3.2 wx_baseu_xml-3.2
WANTLIB += wx_gtk3u_core-3.2 wx_gtk3u_html-3.2 wx_gtk3u_qa-3.2
WANTLIB += z
# dlopened
WANTLIB += avcodec avformat avutil

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/cmake \
		lang/python

MODCMAKE_LDFLAGS=	-Wl,-rpath,${TRUEPREFIX}/lib/audacity
MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/gettext,-tools \
		textproc/rapidjson

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS +=	devel/nasm
.endif

LIB_DEPENDS=	audio/flac \
		audio/lame \
		audio/libid3tag \
		audio/lilv \
		audio/libsndfile \
		audio/libsoxr \
		audio/libvorbis \
		audio/opusfile \
		audio/portaudio-svn \
		audio/portmidi \
		audio/soundtouch \
		audio/suil \
		audio/vamp-plugin-sdk \
		audio/wavpack \
		graphics/ffmpeg \
		sysutils/e2fsprogs \
		x11/wxWidgets

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

CONFIGURE_ARGS=	-Daudacity_lib_preference:STRING=system \
		-Daudacity_has_crashreports:STRING=off \
		-Daudacity_has_networking:STRING=off \
		-Daudacity_has_sentry_reporting:STRING=off \
		-Daudacity_lib_preference:STRING=system \
		-Daudacity_use_expat:STRING=system \
		-Daudacity_use_ffmpeg:STRING=loaded \
		-Daudacity_use_ladspa:STRING=off \
		-Daudacity_use_lame:STRING=system \
		-Daudacity_use_libflac:STRING=system \
		-Daudacity_use_libid3tag:STRING=system \
		-Daudacity_use_libmad:STRING=system \
		-Daudacity_use_libogg:STRING=system \
		-Daudacity_use_libsndfile:STRING=system \
		-Daudacity_use_libvorbis:STRING=system \
		-Daudacity_use_lv2:STRING=system \
		-Daudacity_use_midi:STRING=system \
		-Daudacity_use_pch:STRING=off \
		-Daudacity_use_portaudio:STRING=system \
		-Daudacity_use_portsmf:STRING=local \
		-Daudacity_use_sbsms:STRING=local \
		-Daudacity_use_soundtouch:STRING=system \
		-Daudacity_use_soxr:STRING=system \
		-Daudacity_use_twolame:STRING=off \
		-Daudacity_use_vamp:STRING=system \
		-Daudacity_has_vst3:STRING=off \
		-Daudacity_use_wxwidgets:STRING=system

# audacity can use libmad or mpg123; we are already linking to mpg123 through
# libsndfile and pcaudiolib, so prefer it
CONFIGURE_ARGS +=	-Daudacity_use_libmad:STRING=off

# don't use conan (no port available)
CONFIGURE_ARGS +=	-Daudacity_conan_enabled:BOOL=OFF

# disable portmixer that requires Pa_GetStreamHostApiType which our
# audio/portaudio does not provide
CONFIGURE_ARGS +=	-Daudacity_use_portmixer:STRING=off

# prevent picking up ccache:
# ccache: error: Failed to create directory /audacity-2.4.2_writes_to_HOME/.cache/ccache/tmp: Permission denied
CONFIGURE_ARGS +=	-DCCACHE_PROGRAM:BOOL=OFF

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS +=	-DHAVE_MMX:BOOL=OFF
CONFIGURE_ARGS +=	-DHAVE_SSE:BOOL=OFF
CONFIGURE_ARGS +=	-DHAVE_SSE2:BOOL=OFF
.endif

.if ${MACHINE_ARCH} == "i386"
CFLAGS += -msse2
.endif

NO_TEST=	Yes

post-install:
.for i in 16 22 24 32
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${i}x${i}/apps
	mv ${PREFIX}/share/icons/hicolor/${i}x${i}/audacity.png \
		${PREFIX}/share/icons/hicolor/${i}x${i}/apps/
.endfor

.include <bsd.port.mk>
