MASTER_SITES=	${MASTER_SITE_APACHE:=guacamole/$V/source/}
DISTNAME=	guacamole-server-$V
COMMENT=	clientless remote desktop gateway

SHARED_LIBS +=	guac-client-kubernetes    0.0 # 0.0
SHARED_LIBS +=	guac-client-rdp           0.0 # 0.0
SHARED_LIBS +=	guac-client-ssh           0.0 # 0.0
SHARED_LIBS +=	guac-client-vnc           0.0 # 0.0
SHARED_LIBS +=	guac                      0.0 # 20.0

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xdmcp Xext Xrender aom avahi-client
WANTLIB += avahi-common avcodec avformat avutil brotlidec brotlienc
WANTLIB += bz2 c cairo crypto cups dav1d dbus-1 epoll-shim execinfo
WANTLIB += expat fontconfig freerdp-client2 freerdp2 freetype
WANTLIB += gcrypt glib-2.0 gmp gnutls gobject-2.0 gpg-error gsm
WANTLIB += harfbuzz hogweed iconv idn2 intl jpeg lzma lzo2 m mp3lame
WANTLIB += nettle ogg opus p11-kit pango-1.0 pangocairo-1.0 pixman-1
WANTLIB += png pulse sasl2 sndio speex ssh2 ssl swresample swscale
WANTLIB += tasn1 theoradec theoraenc unistring usb-1.0 uuid vncclient
WANTLIB += vorbis vorbisenc vpx webp websockets winpr2 x264 x265
WANTLIB += xcb xcb-render xcb-shm xkbfile xml2 xvidcore z zstd

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
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -D_BSD_SOURCE" \
		LDFLAGS="-L${LOCALBASE}/lib"
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
