# $OpenBSD: Makefile,v 1.25 2012/06/06 15:01:49 jakob Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns>=4.11 pcap
LIB_DEPENDS+=	net/ldns/libldns>=1.6.13

WRKSRC=		${WRKDIST}/examples

USE_GROFF=	Yes
USE_GMAKE=	Yes
CONFIGURE_ARGS+=--with-ldns=${LOCALBASE}
CONFIGURE_ENV+=	libtool=${LIBTOOL}

.include <bsd.port.mk>
