# $OpenBSD: Makefile,v 1.21 2011/04/21 21:13:57 landry Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns>=4.7 pcap
LIB_DEPENDS+=	net/ldns/libldns>=1.6.9

WRKSRC=		${WRKDIST}/examples

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
CONFIGURE_ENV+=		libtool=${LIBTOOL}
USE_GROFF =	Yes

.include <bsd.port.mk>
