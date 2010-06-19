# $OpenBSD: Makefile,v 1.12 2010/06/19 21:18:11 jakob Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto pcap
LIB_DEPENDS+=	ldns.>=4.4::net/ldns/libldns

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
