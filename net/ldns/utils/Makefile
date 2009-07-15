# $OpenBSD: Makefile,v 1.8 2009/07/15 22:13:45 jakob Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto pcap
LIB_DEPENDS+=	ldns.>=3.0::net/ldns/libldns

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
