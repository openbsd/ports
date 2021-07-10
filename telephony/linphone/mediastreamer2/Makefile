# $OpenBSD: Makefile,v 1.2 2021/07/10 14:05:37 sthen Exp $

COMMENT =	streaming engine for voice/video telephony applications

V =		4.5.16
MODULE =	mediastreamer2
REVISION =	0

SHARED_LIBS += mediastreamer 0.0 # 11

CONFIGURE_ARGS =-DENABLE_STATIC=NO \
		-DENABLE_DOC=NO \
		-DENABLE_STRICT=NO\
		-DENABLE_UNIT_TESTS=NO \
		-DENABLE_TOOLS=NO \
		-DENABLE_SNDIO=YES \
		-DENABLE_ALSA=NO \
		-DENABLE_PULSEAUDIO=NO \
		-DGSM_INCLUDE_DIRS=${LOCALBASE}/include \
		-DV4L_INCLUDE_DIRS=${LOCALBASE}/include

CONFIGURE_ENV +=	LDFLAGS=-L${X11BASE}/lib


#bcg729 ?
LIB_DEPENDS =	telephony/linphone/bctoolbox\
		telephony/linphone/ortp \
		telephony/linphone/bzrtp \
		telephony/bcg729 \
		multimedia/libv4l \
		multimedia/libvpx \
		multimedia/libtheora \
		security/libsrtp \
		graphics/glew \
		graphics/ffmpeg \
		graphics/zxing \
		audio/opus \
		audio/speex \
		audio/speexdsp \
		audio/gsm

WANTLIB += ${COMPILER_LIBCXX} bctoolbox m
WANTLIB += GLEW X11 Xv avcodec avutil bcg729 bzrtp gsm opus ortp sndio
WANTLIB += speex speexdsp sqlite3 srtp2 swscale theora turbojpeg v4l1
WANTLIB += v4l2 v4lconvert vpx xml2 zxing

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
