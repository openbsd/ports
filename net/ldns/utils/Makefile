# $OpenBSD: Makefile,v 1.11 2009/12/04 13:14:07 jakob Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto pcap
LIB_DEPENDS+=	ldns.>=4.2::net/ldns/libldns

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
