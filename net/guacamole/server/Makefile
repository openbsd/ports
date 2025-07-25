# 1.5.4 needs posix timers
# 1.6.0 drops that again, but forked server exits on connect
# for some reason (nothing in debug logs); possibly related to patches
# dropping pthread_rwlockattr_setpshared(..., PTHREAD_PROCESS_SHARED)
# that we don't support
V=		1.5.3
REVISION=	0

SITES=		${SITE_APACHE:=guacamole/$V/source/}
DISTNAME=	guacamole-server-$V
COMMENT=	clientless remote desktop gateway

SHARED_LIBS +=	guac-client-kubernetes    1.0 # 0.0
SHARED_LIBS +=	guac-client-rdp           1.0 # 0.0
SHARED_LIBS +=	guac-client-ssh           1.0 # 0.0
SHARED_LIBS +=	guac-client-vnc           1.0 # 0.0
SHARED_LIBS +=	guac-terminal             0.0 # 0.0
SHARED_LIBS +=	guac                      0.0 # 20.0

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += X11 X11-xcb Xau Xdmcp Xext Xfixes Xrender aom avahi-client
WANTLIB += avahi-common avcodec avformat avutil bz2 c cairo crypto
WANTLIB += cups dav1d dbus-1 drm epoll-shim execinfo expat ffi
WANTLIB += fontconfig freerdp-client2 freerdp2 freetype fribidi
WANTLIB += gcrypt gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gpg-error graphite2 gsm harfbuzz hogweed iconv idn2
WANTLIB += intl jpeg lzma lzo2 m mp3lame nettle ogg opus p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png pulse sasl2 sharpyuv sndio speex ssh2 ssl swresample
WANTLIB += swscale tasn1 theoradec theoraenc unistring usb-1.0
WANTLIB += uuid va va-drm va-x11 vncclient vorbis vorbisenc vpx
WANTLIB += webp webpmux websockets winpr2 x264 x265 xcb xcb-dri3
WANTLIB += xcb-render xcb-shm xkbfile xml2 xvidcore z

COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	audio/pulseaudio \
		devel/glib2 \
		devel/pango \
		graphics/ffmpeg \
		graphics/libwebp \
		net/libvncserver \
		security/libssh2 \
		sysutils/e2fsprogs \
		www/libwebsockets \
		x11/freerdp
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
			-D_BSD_SOURCE" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	--without-telnet

# various source files have no linefeed before eof, which trips -Werror
post-extract:
	find ${WRKSRC} -name Makefile.in -exec sed -i 's,-Werror ,,' {} +

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/guacamole/
	${INSTALL_DATA} ${FILESDIR}/guacd.conf \
	    ${PREFIX}/share/examples/guacamole/
	rm ${PREFIX}/lib{,/freerdp2}/*.la

.include <bsd.port.mk>
