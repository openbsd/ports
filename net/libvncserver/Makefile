COMMENT=		library for easy implementation of a VNC server

DISTNAME=		LibVNCServer-0.9.14
PKGNAME=		${DISTNAME:L}

SHARED_LIBS +=  vncclient                 1.1 # 0.0
SHARED_LIBS +=  vncserver                 3.2 # 0.0

CATEGORIES=		net devel

HOMEPAGE=		https://libvnc.github.io/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += crypto gcrypt gnutls jpeg lzo2 png pthread sasl2
WANTLIB += ssl z

SITES=			https://github.com/LibVNC/libvncserver/archive/

# TLS (Thread-Local Storage)
COMPILER=		base-clang ports-gcc
MODULES=		devel/cmake

LIB_DEPENDS=		archivers/lzo2 \
			graphics/jpeg \
			graphics/png \
			security/cyrus-sasl2 \
			security/gnutls \
			security/libgcrypt

WRKDIST=		${WRKDIR}/libvncserver-${DISTNAME}

CONFIGURE_ARGS=		-DWITH_FFMPEG=OFF \
			-DWITH_SDL=OFF \
			-DWITH_SYSTEMD=OFF \
			-DWITH_GTK=OFF \
			-DWITH_LIBSSH2=OFF

.include <bsd.port.mk>
