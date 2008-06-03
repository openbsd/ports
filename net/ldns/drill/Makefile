# $OpenBSD: Makefile,v 1.3 2008/06/03 19:41:27 okan Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}p0

WANTLIB=	c crypto pcap
LIB_DEPENDS+=	ldns.>=1.0::net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
