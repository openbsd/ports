COMMENT=	CIM client library

GH_ACCOUNT=	kkaempf
GH_PROJECT=	sblim-sfcc
GH_TAGNAME=	SFCC_2_2_8
PKGNAME=	sblim-sfcc-2.2.8
REVISION=	0

SHARED_LIBS +=	cimcClientXML             0.0 # 0.0
SHARED_LIBS +=	cimcclient                0.0 # 0.0
SHARED_LIBS +=	cmpisfcc                  0.0 # 1.0

CATEGORIES=	sysutils

# Eclipse Public License v1.0
PERMIT_PACKAGE=	Yes

WANTLIB += crypto curl nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls
WANTLIB += pthread ssl z

AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16
CONFIGURE_STYLE=  autoreconf

CONFIGURE_ENV=	LDFLAGS=-L${LOCALBASE}/lib \
		CPPFLAGS=-I${LOCALBASE}/include

LIB_DEPENDS=	net/curl
FAKE_FLAGS=	docdir=${PREFIX}/share/doc/sblim-sfcc

.include <bsd.port.mk>
