# 1.5.4 needs posix timers
# 1.6.0 drops that again, but forked server exits on connect
# for some reason (nothing in debug logs); possibly related to patches
# dropping pthread_rwlockattr_setpshared(..., PTHREAD_PROCESS_SHARED)
# that we don't support
# Look at reenabling rdp below if updating
V=		1.5.3
REVISION=	1

SITES=		${SITE_APACHE:=guacamole/$V/source/}
DISTNAME=	guacamole-server-$V
COMMENT=	clientless remote desktop gateway

SHARED_LIBS +=	guac-client-kubernetes    1.0 # 0.0
#SHARED_LIBS +=	guac-client-rdp           1.0 # 0.0
SHARED_LIBS +=	guac-client-ssh           1.0 # 0.0
SHARED_LIBS +=	guac-client-vnc           1.0 # 0.0
SHARED_LIBS +=	guac-terminal             0.0 # 0.0
SHARED_LIBS +=	guac                      0.0 # 20.0

WANTLIB += ${COMPILER_LIBCXX}

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
