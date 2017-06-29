# $OpenBSD: Makefile,v 1.32 2017/06/29 10:31:06 sthen Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns>=6.1 pcap ssl
LIB_DEPENDS+=	net/ldns/libldns>=1.6.17

WRKSRC=		${WRKDIST}/examples

USE_GMAKE=	Yes
CONFIGURE_ARGS+= --with-ldns=${LOCALBASE}
CONFIGURE_ENV+=	libtool=${LIBTOOL}

# uses ldns_key_EVP_load_gost_id which we don't have
CONFIGURE_ARGS+= --disable-gost

CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.69

.include <bsd.port.mk>
