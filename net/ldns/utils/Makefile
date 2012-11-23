# $OpenBSD: Makefile,v 1.27 2012/11/23 04:26:09 brad Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns>=5.0 pcap
LIB_DEPENDS+=	net/ldns/libldns>=1.6.16

WRKSRC=		${WRKDIST}/examples

USE_GROFF=	Yes
USE_GMAKE=	Yes
CONFIGURE_ARGS+=--with-ldns=${LOCALBASE}
CONFIGURE_ENV+=	libtool=${LIBTOOL}

.include <bsd.port.mk>
