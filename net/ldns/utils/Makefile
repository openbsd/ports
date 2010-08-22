# $OpenBSD: Makefile,v 1.13 2010/08/22 08:56:51 jakob Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns.>=4.4 pcap
LIB_DEPENDS+=	:libldns->=1.6.6:net/ldns/libldns

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
