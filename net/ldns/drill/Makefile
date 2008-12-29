# $OpenBSD: Makefile,v 1.6 2008/12/29 08:11:46 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto pcap
LIB_DEPENDS+=	ldns.>=2.1::net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
