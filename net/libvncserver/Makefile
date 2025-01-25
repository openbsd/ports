COMMENT=	library for easy implementation of a VNC server

GH_ACCOUNT=	LibVNC
GH_PROJECT=	libvncserver
GH_TAGNAME=	LibVNCServer-0.9.15
PKGNAME=	${GH_TAGNAME:L}

SHARED_LIBS +=  vncclient                 1.2
SHARED_LIBS +=  vncserver                 3.2

CATEGORIES=	net devel

HOMEPAGE=	https://libvnc.github.io/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += crypto gcrypt gnutls jpeg lzo2 png pthread sasl2
WANTLIB += ssl z

# TLS (Thread-Local Storage)
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	devel/cmake

LIB_DEPENDS=	archivers/lzo2 \
		graphics/jpeg \
		graphics/png \
		security/cyrus-sasl2 \
		security/gnutls \
		security/libgcrypt

CONFIGURE_ARGS=	-DWITH_EXAMPLES=OFF \
		-DWITH_FFMPEG=OFF \
		-DWITH_SDL=OFF \
		-DWITH_SYSTEMD=OFF \
		-DWITH_GTK=OFF \
		-DWITH_LIBSSH2=OFF

.include <bsd.port.mk>
