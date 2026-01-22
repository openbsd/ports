COMMENT=	library for network communications and cryptography

DISTNAME=	libsodium-1.0.21
REVISION=	0

SHARED_LIBS +=  sodium               11.0     # 29.0

CATEGORIES=	security net

HOMEPAGE=	https://github.com/jedisct1/libsodium
SITES=		https://download.libsodium.org/libsodium/releases/ \
		https://download.libsodium.org/libsodium/releases/old/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libsodium
	${INSTALL_DATA} ${WRKSRC}/README.markdown ${PREFIX}/share/doc/libsodium/

.include <bsd.port.mk>
