# $OpenBSD: Makefile,v 1.21 2019/09/21 15:56:20 bcallah Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-1.5.2
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  3.0      # 5.0

HOMEPAGE=		https://libzip.org/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += bz2 c crypto ssl z

MASTER_SITES=		https://libzip.org/download/

MODULES =		devel/cmake

LIB_DEPENDS =		archivers/bzip2

CONFIGURE_ARGS =	-DENABLE_COMMONCRYPTO=OFF \
			-DENABLE_GNUTLS=OFF \
			-DENABLE_MBEDTLS=OFF

.include <bsd.port.mk>
