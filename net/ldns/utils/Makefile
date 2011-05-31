# $OpenBSD: Makefile,v 1.22 2011/05/31 17:40:50 jakob Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns>=4.8 pcap
LIB_DEPENDS+=	net/ldns/libldns>=1.6.10

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
CONFIGURE_ENV+=		libtool=${LIBTOOL}
USE_GROFF =	Yes

.include <bsd.port.mk>
