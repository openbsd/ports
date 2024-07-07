COMMENT-main =		modular SIP User-Agent with audio and video support
COMMENT-gtk =		GTK+-based modules for baresip

GH_PROJECT =	baresip

SHARED_LIBS +=		baresip	1.2 # 0.0
MULTI_PACKAGES =	-main -gtk
PKGNAME-main =		baresip-${GH_TAGNAME:C/^v//}
PKGNAME-gtk =		baresip-gtk-${GH_TAGNAME:C/^v//}

WANTLIB-main += ICE SDL2 SM X11 Xext aom avcodec avdevice avfilter
WANTLIB-main += avformat avutil c crypto execinfo gio-2.0 glib-2.0 gobject-2.0
WANTLIB-main += m mosquitto mp3lame mpg123 opencore-amrnb opus png
WANTLIB-main += pthread re sndfile sndio spandsp speexdsp ssl swresample
WANTLIB-main += swscale twolame v4l2 vpx z
WANTLIB-main += ${COMPILER_LIBCXX}

WANTLIB-gtk += atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB-gtk += glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB-gtk += pangocairo-1.0

BUILD_DEPENDS =		telephony/libzrtp>=0.20221005:build
LIB_DEPENDS-main =	audio/libsndfile \
			audio/opencore-amr \
			audio/opus \
			audio/twolame \
			graphics/ffmpeg \
			graphics/png \
			multimedia/libv4l \
			multimedia/libvpx \
			net/mosquitto \
			telephony/baresip/re>=3.12.0 \
			telephony/spandsp
LIB_DEPENDS-gtk =	x11/gtk+3,-main
RUN_DEPENDS-gtk =	telephony/baresip/baresip,-main
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_JACK=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_PULSE=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_PORTAUDIO=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_PIPEWIRE=Yes

post-extract:
	# do the symlink dance so that cmake finds static libzrtpcppcore.a & private headers
	ln -sf ${WRKDIR}/telephony/libzrtp/ZRTPCPP-2d59090ee244bc4d3a682ad45ae49dc7b4d4dfb7 ${WRKDIR}/ZRTPCPP
	ln -f ${WRKDIR}/telephony/libzrtp/build-${MACHINE_ARCH}/clients/no_client/libzrtpcppcore.a ${WRKDIR}/ZRTPCPP/clients/no_client/

.include <bsd.port.mk>
