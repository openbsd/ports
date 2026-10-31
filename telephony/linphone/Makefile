COMMENT =	graphical audio and video SIP phone

V =		6.2.4
PKGNAME =	linphone-${V}

CATEGORIES =	telephony
MODULES +=	devel/cmake
MAINTAINER =	Landry Breuil <landry@openbsd.org>

COMPILER =	base-clang ports-gcc

# AGPLv3
PERMIT_PACKAGE =	Yes

DIST_TUPLE +=	github BelledonneCommunications linphone-desktop ${V} .
DIST_TUPLE +=	github BelledonneCommunications linphone-sdk a6e277005e941b10e283c97cf50feab714acd89e external/linphone-sdk

SHARED_LIBS +=	bctoolbox-tester          1.0 # 0.0
SHARED_LIBS +=	bctoolbox                 2.1 # 0.0
SHARED_LIBS +=	bcunit                    0.0 # 0.0
SHARED_LIBS +=	belcard                   1.0 # 0.0
SHARED_LIBS +=	belle-sip                 1.1 # 0.0
SHARED_LIBS +=	belr                      1.0 # 0.0
SHARED_LIBS +=	bzrtp                     3.0 # 0.0
SHARED_LIBS +=	linphone++                6.0 # 0.0
SHARED_LIBS +=	linphone                  6.0 # 0.0
SHARED_LIBS +=	mediastreamer2            2.0 # 11.0
SHARED_LIBS +=	ortp                      4.1 # 0.0

MODULES +=	x11/qt6

#		multimedia/libtheora -> globally disabled in linphone/CMakeLists.txt ?

LIB_DEPENDS =	audio/gsm \
		audio/opus \
		audio/speex \
		audio/speexdsp \
		databases/openldap \
		devel/jsoncpp \
		graphics/glew \
		graphics/zxing-cpp \
		multimedia/aom \
		multimedia/dav1d \
		multimedia/libv4l \
		multimedia/libvpx \
		multimedia/openh264 \
		security/libsrtp>=2.3.0p2 \
		security/mbedtls \
		telephony/bcg729 \
		textproc/xerces-c \
		x11/qt6/qtsvg \
		x11/qt6/qtnetworkauth \
		x11/qt6/qtdeclarative

WANTLIB += ${COMPILER_LIBCXX} GL GLEW Qt6Concurrent Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6NetworkAuth Qt6OpenGL Qt6Qml Qt6Quick
WANTLIB += Qt6Svg Qt6Test Qt6Widgets X11 Xext Xfixes Xinerama
WANTLIB += Xv ZXing aom bcg729 c dav1d gsm iconv jsoncpp lber ldap m
WANTLIB += mbedcrypto mbedtls mbedx509 openh264 opus sndio speex speexdsp
WANTLIB += sqlite3 srtp2 turbojpeg v4l2 v4lconvert vpx xerces-c xml2 z

# -DENABLE_DOC=NO isnt enough to disable the doxygen dep,
# libphone.hh generation needs doxygen intermediate files
BUILD_DEPENDS =	textproc/py-stache \
		devel/py-six \
		devel/doxygen

# find libXinerama/libXfixes for mediastreamer2
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

CONFIGURE_ARGS += \
		-DLINPHONEAPP_INSTALL_PREFIX=${PREFIX} \
		-DLINPHONESDK_VERSION=5.4.104 \
		-DCCACHE_PROGRAM=OFF \
		-DENABLE_APP_PACKAGE_ROOTCA=OFF \
		-DENABLE_DB_STORAGE=NO \
		-DENABLE_MKV=OFF # needs bcmatroska2

# disable building mswebrtc
CONFIGURE_ARGS += \
		-DENABLE_ILBC=OFF \
		-DENABLE_WEBRTC_AEC=OFF \
		-DENABLE_WEBRTC_VAD=OFF

# mediastreamer2
CONFIGURE_ARGS += \
		-DENABLE_SNDIO=YES \
		-DENABLE_ALSA=NO \
		-DENABLE_AV1=YES \
		-DENABLE_QT_GL=YES \
		-DENABLE_GLX=YES \
		-DENABLE_PULSEAUDIO=NO \
		-DENABLE_VIDEO=YES \
		-DENABLE_THEORA=YES \
		-DENABLE_QRCODE=YES \
		-DENABLE_G729=YES \
		-DBcg729_DIR=${LOCALBASE}/share/Bcg729/cmake

# CONFIGURE_ARGS +=	-DENABLE_LIME_X3DH=NO # needs Lime
# dont build bundled libs
CONFIGURE_ARGS += \
		-DBUILD_AOM=OFF \
		-DBUILD_BV16=OFF \
		-DBUILD_BCG729=OFF \
		-DBUILD_CODEC2=OFF \
		-DBUILD_DAV1D=OFF \
		-DBUILD_DECAF=OFF \
		-DBUILD_FFMPEG=OFF \
		-DBUILD_GSM=OFF \
		-DBUILD_HIDAPI=OFF \
		-DBUILD_JSONCPP=OFF \
		-DBUILD_LIBJPEGTURBO=OFF \
		-DBUILD_LIBOQS=OFF \
		-DBUILD_LIBSRTP2=OFF \
		-DBUILD_LIBVPX=OFF \
		-DBUILD_LIBXML2=OFF \
		-DBUILD_LIBYUV=OFF \
		-DBUILD_MBEDTLS=OFF \
		-DBUILD_OPENH264=OFF \
		-DBUILD_OPENSSL=OFF \
		-DBUILD_OPENCORE_AMR=OFF \
		-DBUILD_OPENLDAP=OFF \
		-DBUILD_OPUS=OFF \
		-DBUILD_RNNOISE=OFF \
		-DBUILD_SOCI=OFF \
		-DBUILD_SPEEX=OFF \
		-DBUILD_SQLITE3=OFF \
		-DBUILD_VO_AMRWBENC=OFF \
		-DBUILD_XERCESC=OFF \
		-DBUILD_ZLIB=OFF \
		-DBUILD_ZXINGCPP=OFF

post-patch:
	echo "set(LINPHONESDK_VERSION \"5.5.36+1\")\nset(GIT_BRANCH_NAME \"release/6.2\")\nset(LINPHONEAPP_VERSION \"${V}\")" > ${WRKSRC}/Linphone/linphoneqt_version.cmake

pre-configure:
	rm -f ${WRKSRC}/external/linphone-sdk/mediastreamer2/cmake/FindBCG729.cmake

post-install:
	# or remove it in include/CMakeLists.txt, as the ones in /usr/X11R6/include are probably more recent
	# https://gitlab.linphone.org/BC/public/mediastreamer2/-/commit/9529c57
	rm -Rf ${PREFIX}/include/OpenGL
	# not a good idea to keep those ?
	rm -Rf ${PREFIX}/share/Mediastreamer2/cmake/Find*cmake


.include <bsd.port.mk>
