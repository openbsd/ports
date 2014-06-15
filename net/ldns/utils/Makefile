# $OpenBSD: Makefile,v 1.30 2014/06/15 20:20:34 sthen Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns>=6.1 pcap ssl
LIB_DEPENDS+=	net/ldns/libldns>=1.6.17

WRKSRC=		${WRKDIST}/examples

USE_GMAKE=	Yes
CONFIGURE_ARGS+= --with-ldns=${LOCALBASE}
CONFIGURE_ENV+=	libtool=${LIBTOOL}

CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.68

.include <bsd.port.mk>
