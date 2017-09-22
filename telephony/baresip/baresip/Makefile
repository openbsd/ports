# $OpenBSD: Makefile,v 1.18 2017/09/22 07:26:48 feinerer Exp $

COMMENT-main =		modular SIP User-Agent with audio and video support
COMMENT-gtk2 =		GTK+2-based modules for baresip

V =			0.5.5
DISTNAME =		baresip-$V
PKGNAME-main =		baresip-$V
PKGNAME-gtk2 =		baresip-gtk2-$V

WANTLIB-main += SDL2 X11 Xext avcodec avdevice avformat avutil c gsm
WANTLIB-main += m mpg123 opus png pthread re rem sndfile sndio spandsp
WANTLIB-main += speex speexdsp swscale twolame v4l2 vpx x264 x265

WANTLIB-gtk2 += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-gtk2 += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB-gtk2 += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gstapp-1.0
WANTLIB-gtk2 += gstbase-1.0 gstreamer-1.0 gtk-x11-2.0 intl mpg123 pango-1.0
WANTLIB-gtk2 += pangocairo-1.0 pangoft2-1.0 re z


BUILD_DEPENDS =		telephony/libzrtp>=0.20170512
LIB_DEPENDS-main =	audio/gsm \
			audio/libsndfile \
			audio/mpg123 \
			audio/opus \
			audio/speex \
			audio/twolame \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/png \
			multimedia/libv4l \
			multimedia/libvpx>=1.3.0 \
			telephony/baresip/re>=0.5.4 \
			telephony/baresip/rem>=0.5.0 \
			telephony/spandsp
LIB_DEPENDS-gtk2 =	multimedia/gstreamer1/plugins-base \
			telephony/baresip/re>=0.5.4 \
			x11/gtk+2,-main
RUN_DEPENDS-gtk2 =	telephony/baresip/baresip,-main>=$V \

MAKE_ENV +=		LIBRE_INC=${LOCALBASE}/include/re \
			LIBRE_SO=${LOCALBASE}/lib LIBS="-lm -lrem" \

MAKE_FLAGS +=		MOD_AUTODETECT= \
			EXTRA_MODULES="echo snapshot sndio swscale" \
			HAVE_LIBV4L2=yes \
			HAVE_SPEEXDSP=yes \
			USE_AMR=yes \
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
			USE_SPEEX=yes \
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

MULTI_PACKAGES = -main -gtk2
PSEUDO_FLAVORS = no_gtk2
FLAVOR ?=

.include <bsd.port.arch.mk>

.if ${FLAVOR:L:Mno_gtk2}
BUILD_PACKAGES :=	${BUILD_PACKAGES:N-gtk2}
.endif

.if ${BUILD_PACKAGES:M-gtk2}
MAKE_FLAGS +=		USE_CAIRO=yes \
			USE_GST1=yes \
			USE_GST_VIDEO1=yes \
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
