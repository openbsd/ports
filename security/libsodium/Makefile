# $OpenBSD: Makefile,v 1.18 2016/04/18 09:53:01 sthen Exp $

COMMENT=	library for network communications and cryptography

DISTNAME=	libsodium-1.0.10

SHARED_LIBS +=	sodium         7.1            # .19.0

CATEGORIES=	security net

HOMEPAGE=	https://github.com/jedisct1/libsodium

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://download.libsodium.org/libsodium/releases/ \
		https://download.libsodium.org/libsodium/releases/old/

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libsodium
	${INSTALL_DATA} ${WRKSRC}/README.markdown ${PREFIX}/share/doc/libsodium/

.include <bsd.port.mk>
