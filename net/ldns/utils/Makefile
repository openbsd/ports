# $OpenBSD: Makefile,v 1.17 2010/11/19 22:31:34 espie Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}
REVISION=	0

WANTLIB=	c crypto ldns>=4.5 pcap
LIB_DEPENDS+=	net/ldns/libldns>=1.6.7

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
