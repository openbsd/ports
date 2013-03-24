# $OpenBSD: Makefile,v 1.28 2013/03/24 21:29:21 sthen Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}
REVISION=	0

WANTLIB=	c crypto ldns>=5.0 pcap
LIB_DEPENDS+=	net/ldns/libldns>=1.6.16

WRKSRC=		${WRKDIST}/examples

USE_GMAKE=	Yes
CONFIGURE_ARGS+= --with-ldns=${LOCALBASE}
CONFIGURE_ENV+=	libtool=${LIBTOOL}

.include <bsd.port.mk>
