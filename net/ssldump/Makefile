# $OpenBSD: Makefile,v 1.19 2021/11/13 19:13:20 tb Exp $

COMMENT=	SSLv3/TLS network protocol analyzer

GH_ACCOUNT=	adulau
GH_PROJECT=	ssldump
GH_TAGNAME=	v1.4
CATEGORIES=	net

HOMEPAGE=	https://github.com/adulau/ssldump

PERMIT_PACKAGE=	Yes

WANTLIB=		c crypto pcap ssl json-c lib/libnet-1.1/net=11

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

CONFIGURE_ARGS+=	--with-openssl-inc=/usr/include \
			--with-openssl-lib=/usr/lib \
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libnet-1.1 -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/libnet-1.1 -L${LOCALBASE}/lib"

LIB_DEPENDS=		devel/json-c \
			net/libnet/1.1

NO_TEST=		Yes

.include <bsd.port.mk>
