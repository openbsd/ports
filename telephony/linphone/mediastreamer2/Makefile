COMMENT =	streaming engine for voice/video telephony applications

MODULE =	mediastreamer2
REVISION =	1

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
		security/libsrtp>=2.3.0p2 \
		graphics/glew \
		graphics/ffmpeg \
		graphics/zxing>=20190320p1 \
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
post-install:
	# or remove it in include/CMakeLists.txt, as the ones in /usr/X11R6/include are probably more recent
	# https://gitlab.linphone.org/BC/public/mediastreamer2/-/commit/9529c57
	rm -Rf ${PREFIX}/include/OpenGL

.include <bsd.port.mk>
