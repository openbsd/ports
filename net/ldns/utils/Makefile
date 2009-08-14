# $OpenBSD: Makefile,v 1.9 2009/08/14 15:00:44 jakob Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto pcap
LIB_DEPENDS+=	ldns.>=4.0::net/ldns/libldns

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
