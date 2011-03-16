# $OpenBSD: Makefile,v 1.20 2011/03/16 20:43:07 jakob Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns>=4.7 pcap
LIB_DEPENDS+=	net/ldns/libldns>=1.6.9

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
