# $OpenBSD: Makefile,v 1.32 2020/07/11 22:54:39 sthen Exp $

COMMENT=	library for network communications and cryptography

DISTNAME=	libsodium-1.0.18
REVISION=	0

SHARED_LIBS +=  sodium               10.0     # 26.0

CATEGORIES=	security net

HOMEPAGE=	https://github.com/jedisct1/libsodium

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MASTER_SITES=	https://download.libsodium.org/libsodium/releases/ \
		https://download.libsodium.org/libsodium/releases/old/

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libsodium
	${INSTALL_DATA} ${WRKSRC}/README.markdown ${PREFIX}/share/doc/libsodium/

.include <bsd.port.mk>
