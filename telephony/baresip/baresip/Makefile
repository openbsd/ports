COMMENT-main =		modular SIP User-Agent with audio and video support
COMMENT-gtk =		GTK+-based modules for baresip

GH_ACCOUNT =	baresip
GH_PROJECT =	baresip
GH_TAGNAME =	v1.1.0
REVISION-gtk =	0
PKGNAME-main =		baresip-${GH_TAGNAME:C/^v//}
PKGNAME-gtk =		baresip-gtk-${GH_TAGNAME:C/^v//}

WANTLIB-main += X11 Xext avcodec avdevice avfilter avformat avutil
WANTLIB-main += c gsm m mosquitto mp3lame mpg123 opus png postproc
WANTLIB-main += pthread re rem sndfile sndio spandsp speexdsp swresample
WANTLIB-main += swscale twolame v4l2 vpx

WANTLIB-gtk += atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB-gtk += glib-2.0 gobject-2.0 gstapp-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB-gtk += gtk-3 harfbuzz intl mpg123 pango-1.0 pangocairo-1.0
WANTLIB-gtk += re

BUILD_DEPENDS =		telephony/libzrtp>=0.20170512
LIB_DEPENDS-main =	audio/gsm \
			audio/libsndfile \
			audio/mpg123 \
			audio/opus \
			audio/twolame \
			graphics/ffmpeg \
			graphics/png \
			multimedia/libv4l \
			multimedia/libvpx>=1.3.0 \
			net/mosquitto \
			telephony/baresip/re>=2.0.1 \
			telephony/baresip/rem>=1.0.0 \
			telephony/spandsp
LIB_DEPENDS-gtk =	multimedia/gstreamer1/plugins-base \
			telephony/baresip/re>=2.0.1 \
			audio/mpg123 \
			x11/gtk+3,-main
RUN_DEPENDS-gtk =	telephony/baresip/baresip,-main>=1.1.0

MAKE_ENV +=		LIBRE_INC=${LOCALBASE}/include/re \
			LIBRE_SO=${LOCALBASE}/lib LIBS="-lm -lrem" \

MAKE_FLAGS +=		MOD_AUTODETECT= \
			EXTRA_MODULES="echo snapshot sndio swscale" \
			USE_MQTT=yes \
			HAVE_LIBV4L2=yes \
			HAVE_SPEEXDSP=yes \
			USE_AMR=yes \
			USE_AVAHI=yes \
			USE_AVCODEC=yes \
			USE_AVFORMAT=yes \
			USE_CONS=yes \
			USE_DTLS=yes \
			USE_DTLS_SRTP=yes \
			USE_FFMPEG=yes \
			USE_G711=yes \
			USE_G722=yes \
			USE_G726=yes \
			USE_GSM=yes \
			USE_GST= \
			USE_GST_VIDEO= \
			USE_H265=yes \
			USE_L16=yes \
			USE_MPA=yes \
			USE_MPG123=yes \
			USE_OPUS=yes \
			USE_PLC=yes \
			USE_SDL2=yes \
			USE_SNDFILE=yes \
			USE_SPEEX_AEC=yes \
			USE_SPEEX_PP=yes \
			USE_SRTP=yes \
			USE_STDIO=yes \
			USE_SYSLOG=yes \
			USE_UUID=yes \
			USE_V4L2=yes \
			USE_VPX=yes \
			USE_X11=yes \
			USE_ZRTP=yes

MULTI_PACKAGES = -main -gtk
PSEUDO_FLAVORS = no_gtk
FLAVOR ?=

.include <bsd.port.arch.mk>

.if ${FLAVOR:L:Mno_gtk}
BUILD_PACKAGES :=	${BUILD_PACKAGES:N-gtk}
.endif

.if ${BUILD_PACKAGES:M-gtk}
MAKE_FLAGS +=		USE_CAIRO=yes \
			USE_GST=yes \
			USE_GST_VIDEO=yes \
			USE_GTK=yes
.endif

TEST_TARGET =		test
NO_TEST =		No

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/baresip/modules \
	                    ${PREFIX}/share/baresip
	${INSTALL_PROGRAM} ${WRKBUILD}/baresip ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/*.so ${PREFIX}/lib/baresip/modules
	${INSTALL_DATA} ${WRKBUILD}/share/* ${PREFIX}/share/baresip

.include <bsd.port.mk>
