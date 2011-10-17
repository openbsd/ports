# $OpenBSD: Makefile,v 1.23 2011/10/17 19:41:24 jakob Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns>=4.9 pcap
LIB_DEPENDS+=	net/ldns/libldns>=1.6.11

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
CONFIGURE_ENV+=		libtool=${LIBTOOL}
USE_GROFF=	Yes

.include <bsd.port.mk>
