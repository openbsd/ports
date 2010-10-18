# $OpenBSD: Makefile,v 1.14 2010/10/18 18:36:49 espie Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns.>=4.4 pcap
LIB_DEPENDS+=	:libldns->=1.6.6:net/ldns/libldns

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
