# $OpenBSD: Makefile,v 1.4 2008/11/09 19:03:18 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto pcap
LIB_DEPENDS+=	ldns.>=1.0::net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
