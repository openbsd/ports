# $OpenBSD: Makefile,v 1.4 2015/06/21 07:40:46 czarkoff Exp $

COMMENT =	modular SIP User-Agent with audio and video support

DISTNAME =	baresip-0.4.13

WANTLIB +=	X11 Xext avcodec avdevice avformat avutil c crypto gsm
WANTLIB +=	m opus pthread re rem sndfile sndio spandsp speex
WANTLIB +=	speexdsp ssl swscale vpx x264 x265 z

BUILD_DEPENDS =	telephony/libzrtp
LIB_DEPENDS =	audio/gsm \
		audio/libsndfile \
		audio/opus \
		audio/speex \
		graphics/ffmpeg \
		multimedia/libvpx \
		telephony/baresip/rem \
		telephony/spandsp

MAKE_FLAGS +=	MOD_AUTODETECT=
MAKE_FLAGS +=	USE_AMR=yes USE_AVCODEC=yes USE_AVFORMAT=yes USE_CONS=yes \
		USE_DTLS=yes USE_DTLS_SRTP=yes USE_FFMPEG=yes USE_G711=yes \
		USE_G722=yes USE_G726=yes USE_GSM=yes USE_L16=yes \
		USE_OPUS=yes USE_PLC=yes USE_SNDFILE=yes USE_SNDIO=yes \
		USE_SPEEX=yes USE_SPEEX_AEC=yes USE_SPEEX_PP=yes \
		USE_SRTP=yes USE_STDIO=yes USE_SYSLOG=yes USE_UUID=yes \
		USE_V4L2=yes USE_VPX=yes USE_X11=yes

# Ideally these should be enabled, but it doesn't seem to be possibe ATM, as
# the required dependencies are not in place.
#MAKE_FLAGS +=	USE_BV32=yes # XXX http://www.broadcom.com/support/broadvoice/downloads.php
#MAKE_FLAGS +=	USE_G722_1=yes # XXX FreeSWITCH???
#MAKE_FLAGS +=	USE_ILBC=yes # XXX http://ilbcfreeware.org/
#MAKE_FLAGS +=	USE_ISAC=yes # XXX FreeSWITCH??? (was used in Google Talk)
#MAKE_FLAGS +=	USE_SDL2=yes # XXX Appears to be broken

MAKE_FLAGS +=	EXTRA_MODULES="h265 sndio zrtp" HAVE_SPEEXDSP=yes \
		LIBRE_INC=${LOCAL_BASE}/include LIBRE_SO=${LOCAL_BASE}/lib \
		LIBS="-lm -lrem"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/baresip/modules \
	                    ${PREFIX}/share/baresip
	${INSTALL_PROGRAM} ${WRKBUILD}/baresip ${PREFIX}/bin
	[ ! -r ${WRKBUILD}/sndio.so ] || ${INSTALL_DATA} ${WRKBUILD}/*.so \
	                    ${PREFIX}/lib/baresip/modules
	${INSTALL_DATA} ${WRKBUILD}/share/* ${PREFIX}/share/baresip

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS} == Yes
MAKE_FLAGS +=	STATIC=yes
.endif
