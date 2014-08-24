# $OpenBSD: Makefile,v 1.6 2014/08/24 22:25:03 sthen Exp $

COMMENT=	library for network communications and cryptography

DISTNAME=	libsodium-0.7.0

SHARED_LIBS +=	sodium         4.0            # .13.0

CATEGORIES=	security net

HOMEPAGE=	https://github.com/jedisct1/libsodium

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m

MASTER_SITES=	https://download.libsodium.org/libsodium/releases/

SEPARATE_BUILD=	Yes
# If built with OpenBSD libtool, self-tests and net/dnscrypt-proxy fail
USE_LIBTOOL=	gnu

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libsodium
	${INSTALL_DATA} ${WRKSRC}/README.markdown ${PREFIX}/share/doc/libsodium/

.include <bsd.port.mk>
