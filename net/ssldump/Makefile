COMMENT=	SSLv3/TLS network protocol analyzer

GH_ACCOUNT=	adulau
GH_PROJECT=	ssldump
GH_TAGNAME=	v1.8
CATEGORIES=	net

# https://github.com/adulau/ssldump
HOMEPAGE=	https://adulau.github.io/ssldump/

PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto pcap ssl json-c lib/libnet-1.1/net=11

MODULES=	devel/cmake

zzzzzzCONFIGURE_ARGS=	--with-openssl-inc=/usr/include \
		--with-openssl-lib=/usr/lib
zzzzzzCONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libnet-1.1 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib/libnet-1.1 -L${LOCALBASE}/lib"

LIB_DEPENDS=	devel/json-c \
		net/libnet/1.1

NO_TEST=	Yes

.include <bsd.port.mk>
