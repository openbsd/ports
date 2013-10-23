# $OpenBSD: Makefile,v 1.1.1.1 2013/10/23 12:07:52 sthen Exp $

COMMENT=	library for network communications and cryptography

DISTNAME=	libsodium-0.4.5

SHARED_LIBS +=	sodium         0.0            # .9.0

CATEGORIES=	security net

HOMEPAGE=	https://github.com/jedisct1/libsodium

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m

MASTER_SITES=	https://download.libsodium.org/libsodium/releases/

SEPARATE_BUILD=	Yes
USE_LIBTOOL=	gnu

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libsodium
	${INSTALL_DATA} ${WRKSRC}/README.markdown ${PREFIX}/share/doc/libsodium/

.include <bsd.port.mk>
