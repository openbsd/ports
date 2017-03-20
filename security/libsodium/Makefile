# $OpenBSD: Makefile,v 1.22 2017/03/20 10:46:23 sthen Exp $

COMMENT=	library for network communications and cryptography

DISTNAME=	libsodium-1.0.12

SHARED_LIBS +=	sodium         8.0            # .20.0

CATEGORIES=	security net

HOMEPAGE=	https://github.com/jedisct1/libsodium

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

# sse2 problems on i386 with base gcc
# ports gcc uses opcodes base gas doesn't support
# -> use clang with integreated assembler
MODULES=	lang/clang
MODCLANG_ARCHS=	i386

WANTLIB += pthread

MASTER_SITES=	https://download.libsodium.org/libsodium/releases/ \
		https://download.libsodium.org/libsodium/releases/old/

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libsodium
	${INSTALL_DATA} ${WRKSRC}/README.markdown ${PREFIX}/share/doc/libsodium/

.include <bsd.port.mk>
