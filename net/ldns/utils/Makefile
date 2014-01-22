# $OpenBSD: Makefile,v 1.29 2014/01/22 00:15:37 brad Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns>=6.1 pcap ssl
LIB_DEPENDS+=	net/ldns/libldns>=1.6.17

WRKSRC=		${WRKDIST}/examples

USE_GMAKE=	Yes
CONFIGURE_ARGS+= --with-ldns=${LOCALBASE}
CONFIGURE_ENV+=	libtool=${LIBTOOL}

.include <bsd.port.mk>
