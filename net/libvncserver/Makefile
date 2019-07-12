# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:31 sthen Exp $

COMMENT=		library for easy implementation of a VNC server

DISTNAME=		LibVNCServer-0.9.12
PKGNAME=		${DISTNAME:L}
REVISION=		0

SHARED_LIBS +=  vncclient                 1.0 # 0.0
SHARED_LIBS +=  vncserver                 3.0 # 0.0

CATEGORIES=		net devel

HOMEPAGE=		https://libvnc.github.io/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += crypto gcrypt gnutls jpeg lzo2 png pthread sasl2
WANTLIB += ssl z

MASTER_SITES=		https://github.com/LibVNC/libvncserver/archive/

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

CONFIGURE_ARGS+=	-DWITH_24BPP=ON \
			-DWITH_JPEG=ON \
			-DWITH_LZO=ON \
			-DWITH_PNG=ON \
			-DWITH_THREADS=ON \
			-DWITH_TIGHTVNC_FILETRANSFER=ON \
			-DWITH_WEBSOCKETS=ON \
			-DWITH_ZLIB=ON \
			-DWITH_SASL=ON \
			-DWITH_IPv6=ON \
			-DWITH_FFMPEG=OFF \
			-DWITH_SDL=OFF \
			-DWITH_SYSTEMD=OFF\

.include <bsd.port.mk>
