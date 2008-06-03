# $OpenBSD: Makefile,v 1.2 2008/06/03 15:03:10 jakob Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c ssl crypto pcap
LIB_DEPENDS+=	ldns.>=1.0::net/ldns/libldns

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
