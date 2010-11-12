# $OpenBSD: Makefile,v 1.16 2010/11/12 07:54:21 sthen Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}
REVISION=	0

WANTLIB=	c crypto ldns.>=4.5 pcap
LIB_DEPENDS+=	:libldns->=1.6.7:net/ldns/libldns

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
