# $OpenBSD: Makefile,v 1.80 2021/10/23 20:40:24 sthen Exp $

COMMENT=	free audio editor

# fosshub has proper tarballs, but they are on time-expired URLs
# so can't be fetched automatically
GH_ACCOUNT=	audacity
GH_PROJECT=	audacity
GH_TAGNAME=	Audacity-2.4.2
DISTNAME=	${GH_TAGNAME:L}
REVISION=	0

CATEGORIES=	audio

HOMEPAGE=	https://www.audacityteam.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC FLAC++ SoundTouch atk-1.0 c
WANTLIB += cairo cairo-gobject expat gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-3 harfbuzz id3tag intl m mad
WANTLIB += ogg pango-1.0 pangocairo-1.0 portaudio portmidi sndfile
WANTLIB += soxr vamp-hostsdk vorbis vorbisenc vorbisfile wx_baseu-3.0
WANTLIB += wx_baseu_net-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 z
# dlopened
WANTLIB += avcodec avformat avutil mp3lame

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/cmake \
		lang/python

MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	audio/flac \
		audio/lame \
		audio/libid3tag \
		audio/libmad \
		audio/libsndfile \
		audio/libsoxr \
		audio/libvorbis \
		audio/portaudio-svn \
		audio/portmidi \
		audio/soundtouch \
		audio/vamp-plugin-sdk \
		graphics/ffmpeg \
		x11/wxWidgets

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_ARGS=	-Daudacity_lib_preference:STRING=system \
		-Daudacity_use_expat:STRING=system \
		-Daudacity_use_wxwidgets:STRING=system \
		-Daudacity_use_soxr:STRING=system \
		-Daudacity_use_sndfile:STRING=system \
		-Daudacity_use_portsmf:STRING=local \
		-Daudacity_use_portaudio:STRING=system \
		-Daudacity_use_ffmpeg:STRING=loaded \
		-Daudacity_use_flac:STRING=system \
		-Daudacity_use_id3tag:STRING=system \
		-Daudacity_use_lame:STRING=system \
		-Daudacity_use_mad:STRING=system \
		-Daudacity_use_midi:STRING=system \
		-Daudacity_use_ogg:STRING=system \
		-Daudacity_use_soundtouch:STRING=system \
		-Daudacity_use_twolame:STRING=off \
		-Daudacity_use_vamp:STRING=system \
		-Daudacity_use_vorbis:STRING=system \
		-Daudacity_use_pch:STRING=off \
		-Daudacity_use_vst:STRING=local

# disable portmixer that requires Pa_GetStreamHostApiType which our
# audio/portaudio does not provide
CONFIGURE_ARGS +=	-Daudacity_use_portmixer:STRING=off

# requires gtk+2
CONFIGURE_ARGS +=	-Daudacity_use_lv2:STRING=off

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS +=	-DHAVE_MMX:BOOL=OFF
CONFIGURE_ARGS +=	-DHAVE_SSE:BOOL=OFF
.endif

.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	-DHAVE_SSE2:BOOL=OFF
.endif

.if ${MACHINE_ARCH} == "i386"
# sse-related build failures; untested but it may alternatively be possible
# to build sbsms if SSE is disabled for the port as a whole on i386
CONFIGURE_ARGS +=	-Daudacity_use_sbsms:STRING=off
.else
CONFIGURE_ARGS +=	-Daudacity_use_sbsms:STRING=local
.endif

NO_TEST=	Yes

post-install:
.for i in 16 22 24 32
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${i}x${i}/apps
	mv ${PREFIX}/share/icons/hicolor/${i}x${i}/audacity.png \
		${PREFIX}/share/icons/hicolor/${i}x${i}/apps/
.endfor

.include <bsd.port.mk>
