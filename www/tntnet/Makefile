# $OpenBSD: Makefile,v 1.18 2015/06/27 07:46:10 jasper Exp $

COMMENT=		modular webapplication server for C++

DISTNAME=		tntnet-2.2.1
CATEGORIES=		www devel

HOMEPAGE=		http://www.tntnet.org/

SHARED_LIBS +=  tntnet                    1.0 # 1.0
SHARED_LIBS +=  tntnet_sdk                1.0 # 1.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto cxxtools>=2 cxxtools-http m pthread ssl stdc++ z

MASTER_SITES=		${HOMEPAGE}download/

MODULES=		converters/libiconv

BUILD_DEPENDS=		archivers/zip
LIB_DEPENDS= 		devel/cxxtools>=2.2.1

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--with-ssl=openssl
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		sysconfdir="${PREFIX}/share/examples/tntnet"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tntnet/
	${INSTALL_DATA} ${WRKSRC}/doc/*.pdf ${PREFIX}/share/doc/tntnet/
	${INSTALL_DATA_DIR} ${PREFIX}/share/tntnet/
	${INSTALL_DATA} ${WRKSRC}/ecpp.vim ${PREFIX}/share/tntnet/

.include <bsd.port.mk>
