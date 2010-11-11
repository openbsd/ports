# $OpenBSD: Makefile,v 1.15 2010/11/11 17:58:00 sthen Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns.>=4.4 pcap
LIB_DEPENDS+=	:libldns->=1.6.7:net/ldns/libldns

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
