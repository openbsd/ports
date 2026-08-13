# 1.5.4 needs posix timers
# 1.6.0 drops that again, but forked server exits on connect
# for some reason (nothing in debug logs); possibly related to patches
# dropping pthread_rwlockattr_setpshared(..., PTHREAD_PROCESS_SHARED)
# that we don't support
# Look at reenabling rdp below if updating
V=		1.5.3
REVISION=	2

SITES=		${SITE_APACHE:=guacamole/$V/source/}
DISTNAME=	guacamole-server-$V
COMMENT=	clientless remote desktop gateway

SHARED_LIBS +=	guac-client-kubernetes    1.0 # 0.0
SHARED_LIBS +=	guac-client-ssh           1.0 # 0.0
SHARED_LIBS +=	guac-client-vnc           1.0 # 0.0
SHARED_LIBS +=	guac-terminal             0.0 # 0.0
SHARED_LIBS +=	guac                      0.0 # 20.0

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += SvtAv1Enc X11 X11-xcb Xau Xdmcp Xext Xfixes Xrender
WANTLIB += aom avcodec avformat avutil bz2 c cairo crypto dav1d
WANTLIB += drm execinfo expat ffi fontconfig freetype fribidi
WANTLIB += gcrypt gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gpg-error graphite2 gsm harfbuzz hogweed iconv idn2
WANTLIB += intl jpeg lzma lzo2 m mp3lame mpg123 nettle ogg opus
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8
WANTLIB += pixman-1 png pulse sasl2 sharpyuv speex ssh2 ssl swresample
WANTLIB += swscale tasn1 theoraenc unistring uuid va va-drm va-x11
WANTLIB += vncclient vorbis vorbisenc vpx webp webpmux websockets
WANTLIB += x264 xcb xcb-dri3 xcb-render xcb-shm xml2 xvidcore z

COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	audio/pulseaudio \
		devel/glib2 \
		devel/pango \
		graphics/ffmpeg \
		graphics/libwebp \
		net/libvncserver \
		security/libssh2 \
		sysutils/e2fsprogs \
		www/libwebsockets
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
			-D_BSD_SOURCE" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS += --without-telnet
# this version of guacamole doesn't support freerdp3
CONFIGURE_ARGS += --without-rdp

# various source files have no linefeed before eof, which trips -Werror
post-extract:
	find ${WRKSRC} -name Makefile.in -exec sed -i 's,-Werror ,,' {} +

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/guacamole/
	${INSTALL_DATA} ${FILESDIR}/guacd.conf \
	    ${PREFIX}/share/examples/guacamole/
	rm ${PREFIX}/lib/*.la
	# rm ${PREFIX}/lib/freerdp2/*.la

.include <bsd.port.mk>
