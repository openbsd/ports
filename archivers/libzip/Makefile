# $OpenBSD: Makefile,v 1.27 2021/11/17 06:52:06 tb Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-1.8.0
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  4.2      # 5.0

HOMEPAGE=		https://libzip.org/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += bz2 c crypto lzma z zstd

MASTER_SITES=		https://libzip.org/download/

MODULES =		devel/cmake

LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz \
			archivers/zstd

CONFIGURE_ARGS =	-DENABLE_COMMONCRYPTO=OFF \
			-DENABLE_GNUTLS=OFF \
			-DENABLE_MBEDTLS=OFF

.include <bsd.port.mk>
