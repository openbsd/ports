# 1.5.4 needs posix timers
V=		1.5.3

SITES=		${SITE_APACHE:=guacamole/$V/source/}
DISTNAME=	guacamole-server-$V
COMMENT=	clientless remote desktop gateway

SHARED_LIBS +=	guac-client-kubernetes    1.0 # 0.0
SHARED_LIBS +=	guac-client-rdp           1.0 # 0.0
SHARED_LIBS +=	guac-client-ssh           1.0 # 0.0
SHARED_LIBS +=	guac-client-vnc           1.0 # 0.0
SHARED_LIBS +=	guac-terminal             0.0 # 0.0
SHARED_LIBS +=	guac                      0.0 # 20.0

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xdmcp Xext Xrender aom avahi-client
WANTLIB += avahi-common avcodec avformat avutil brotlidec brotlienc
WANTLIB += bz2 c cairo crypto cups dav1d dbus-1 epoll-shim execinfo
WANTLIB += expat ffi fontconfig freerdp-client2 freerdp2 freetype
WANTLIB += fribidi gcrypt gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += gobject-2.0 gpg-error graphite2 gsm harfbuzz hogweed
WANTLIB += iconv idn2 intl jpeg lzma lzo2 m mp3lame nettle ogg
WANTLIB += opus p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 pixman-1 png pulse sasl2 sharpyuv sndio speex ssh2
WANTLIB += ssl swresample swscale tasn1 theoradec theoraenc unistring
WANTLIB += usb-1.0 uuid vncclient vorbis vorbisenc vpx webp websockets
WANTLIB += winpr2 x264 x265 xcb xcb-render xcb-shm xkbfile xml2
WANTLIB += xvidcore z zstd

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
