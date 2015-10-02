# $OpenBSD: Makefile,v 1.5 2015/10/02 19:01:24 czarkoff Exp $

SHARED_ONLY =		Yes

COMMENT-main =		modular SIP User-Agent with audio and video support
COMMENT-gtk2 =		GTK+2-based modules for baresip

V =			0.4.15
DISTNAME =		baresip-$V
PKGNAME-main =		baresip-$V
PKGNAME-gtk2 =		baresip-gtk2-$V

WANTLIB += X11 Xext re z

WANTLIB-main += ${WANTLIB} avcodec avdevice avformat avutil c crypto
WANTLIB-main += daalabase daaladec daalaenc gsm m opus pthread rem
WANTLIB-main += sndfile sndio spandsp speex speexdsp ssl swscale vpx
WANTLIB-main += x264 x265

WANTLIB-gtk2 += ${WANTLIB} Xcomposite Xcursor Xdamage Xfixes Xi Xinerama
WANTLIB-gtk2 += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB-gtk2 += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gstapp-1.0
WANTLIB-gtk2 += gstbase-1.0 gstreamer-1.0 gtk-x11-2.0 intl pango-1.0
WANTLIB-gtk2 += pangocairo-1.0 pangoft2-1.0

BUILD_DEPENDS-main =	telephony/libzrtp
LIB_DEPENDS-main =	audio/gsm \
			audio/libsndfile \
			audio/opus \
			audio/speex \
			graphics/ffmpeg \
			multimedia/daala \
			multimedia/libvpx \
			telephony/baresip/rem \
			telephony/spandsp
LIB_DEPENDS-gtk2 =	multimedia/gstreamer1/plugins-base \
			telephony/baresip/re \
			x11/gtk+2,-main
RUN_DEPENDS-gtk2 =	telephony/baresip/baresip,-main \

MAKE_FLAGS +=		MOD_AUTODETECT= EXTRA_MODULES="daala h265 sndio zrtp" \
			HAVE_SPEEXDSP=yes LIBRE_INC=${LOCAL_BASE}/include \
			LIBRE_SO=${LOCAL_BASE}/lib LIBS="-lm -lrem" \

MAKE_FLAGS +=		USE_AMR=yes USE_AVCODEC=yes USE_AVFORMAT=yes \
			USE_CONS=yes USE_DTLS=yes USE_DTLS_SRTP=yes \
			USE_FFMPEG=yes USE_G711=yes USE_G722=yes USE_G726=yes \
			USE_GSM=yes USE_L16=yes USE_OPUS=yes USE_PLC=yes \
			USE_SNDFILE=yes USE_SNDIO=yes USE_SPEEX=yes \
			USE_SPEEX_AEC=yes USE_SPEEX_PP=yes USE_SRTP=yes \
			USE_STDIO=yes USE_SYSLOG=yes USE_UUID=yes USE_V4L2=yes \
			USE_VPX=yes USE_X11=yes

MULTI_PACKAGES = -main -gtk2
PSEUDO_FLAVORS = no_gtk2
FLAVOR ?=

.include <bsd.port.arch.mk>

.if ${FLAVOR:L:Mno_gtk2}
BUILD_PACKAGES :=	${BUILD_PACKAGES:N-gtk2}
.endif

.if ${BUILD_PACKAGES:M-gtk2}
MAKE_FLAGS +=		USE_GST1=yes USE_GST_VIDEO1=yes USE_GTK=yes
.endif


# Ideally these should be enabled, but it doesn't seem to be possibe ATM, as
# the required dependencies are not in place.
#MAKE_FLAGS +=	USE_BV32=yes # XXX http://www.broadcom.com/support/broadvoice/downloads.php
#MAKE_FLAGS +=	USE_G722_1=yes # XXX FreeSWITCH???
#MAKE_FLAGS +=	USE_ILBC=yes # XXX http://ilbcfreeware.org/
#MAKE_FLAGS +=	USE_ISAC=yes # XXX FreeSWITCH??? (was used in Google Talk)
#MAKE_FLAGS +=	USE_SDL2=yes # XXX Appears to be broken


do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/baresip/modules \
	                    ${PREFIX}/share/baresip
	${INSTALL_PROGRAM} ${WRKBUILD}/baresip ${PREFIX}/bin
	[ ! -r ${WRKBUILD}/sndio.so ] || ${INSTALL_DATA} ${WRKBUILD}/*.so \
	                    ${PREFIX}/lib/baresip/modules
	${INSTALL_DATA} ${WRKBUILD}/share/* ${PREFIX}/share/baresip

.include <bsd.port.mk>
