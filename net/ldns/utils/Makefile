# $OpenBSD: Makefile,v 1.19 2011/03/06 09:16:37 jakob Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}
REVISION=	1

WANTLIB=	c crypto ldns>=4.6 pcap
LIB_DEPENDS+=	net/ldns/libldns>=1.6.8

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
