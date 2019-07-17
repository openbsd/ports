# $OpenBSD: Makefile,v 1.33 2019/07/17 14:46:33 danj Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}
REVISION=	0

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
