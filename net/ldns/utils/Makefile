# $OpenBSD: Makefile,v 1.6 2008/12/29 08:11:46 jakob Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto pcap
LIB_DEPENDS+=	ldns.>=2.1::net/ldns/libldns

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
