# $OpenBSD: Makefile,v 1.26 2012/10/24 23:49:08 brad Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns>=5.0 pcap
LIB_DEPENDS+=	net/ldns/libldns>=1.6.14

WRKSRC=		${WRKDIST}/examples

USE_GROFF=	Yes
USE_GMAKE=	Yes
CONFIGURE_ARGS+=--with-ldns=${LOCALBASE}
CONFIGURE_ENV+=	libtool=${LIBTOOL}

.include <bsd.port.mk>
