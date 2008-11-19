# $OpenBSD: Makefile,v 1.5 2008/11/19 09:42:19 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}p0

WANTLIB=	c crypto pcap
LIB_DEPENDS+=	ldns.>=2.0::net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
