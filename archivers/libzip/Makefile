# $OpenBSD: Makefile,v 1.24 2020/07/09 03:18:10 bcallah Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-1.7.1
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  4.1      # 5.0

HOMEPAGE=		https://libzip.org/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += bz2 c crypto lzma ssl z

MASTER_SITES=		https://libzip.org/download/

MODULES =		devel/cmake

LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz

CONFIGURE_ARGS =	-DENABLE_COMMONCRYPTO=OFF \
			-DENABLE_GNUTLS=OFF \
			-DENABLE_MBEDTLS=OFF

.include <bsd.port.mk>
