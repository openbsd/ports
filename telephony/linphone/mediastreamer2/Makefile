COMMENT =	streaming engine for voice/video telephony applications

MODULE =	mediastreamer2

SHARED_LIBS += mediastreamer2 0.0

MODULES+=	x11/qt5

CONFIGURE_ARGS =-DBUILD_SHARED_LIBS=YES \
		-DQT_DEFAULT_MAJOR_VERSION=5 \
		-DENABLE_DOC=NO \
		-DENABLE_STRICT=NO\
		-DENABLE_UNIT_TESTS=NO \
		-DENABLE_TOOLS=NO \
		-DENABLE_SNDIO=YES \
		-DENABLE_ALSA=NO \
		-DENABLE_QT_GL=YES \
		-DENABLE_GLX=YES \
		-DENABLE_PULSEAUDIO=NO \
		-DBcg729_DIR=${LOCALBASE}/share/Bcg729/cmake

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib
#CXXFLAGS =	-I${X11BASE}/include -I${LOCALBASE}/include

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
		graphics/zxing-cpp \
		x11/qt5/qtdeclarative \
		audio/opus \
		audio/speex \
		audio/speexdsp \
		audio/gsm

WANTLIB += ${COMPILER_LIBCXX} ZXing bctoolbox m
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick
WANTLIB += GLEW GL X11 Xext Xv avcodec avutil bcg729 bzrtp gsm opus ortp sndio
WANTLIB += speex speexdsp sqlite3 srtp2 swscale theora turbojpeg
WANTLIB += v4l2 v4lconvert vpx

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt
	rm -f ${WRKSRC}/cmake/FindBCG729.cmake
post-install:
	# or remove it in include/CMakeLists.txt, as the ones in /usr/X11R6/include are probably more recent
	# https://gitlab.linphone.org/BC/public/mediastreamer2/-/commit/9529c57
	rm -Rf ${PREFIX}/include/OpenGL
	# not a good idea to add those ?
	rm -Rf ${PREFIX}/share/Mediastreamer2/cmake/Find*cmake

.include <bsd.port.mk>
