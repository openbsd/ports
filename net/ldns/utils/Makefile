# $OpenBSD: Makefile,v 1.31 2016/01/16 13:15:26 sthen Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}
REVISION=	0

WANTLIB=	c crypto ldns>=6.1 pcap ssl
LIB_DEPENDS+=	net/ldns/libldns>=1.6.17

WRKSRC=		${WRKDIST}/examples

USE_GMAKE=	Yes
CONFIGURE_ARGS+= --with-ldns=${LOCALBASE}
CONFIGURE_ENV+=	libtool=${LIBTOOL}

CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.68

.include <bsd.port.mk>
