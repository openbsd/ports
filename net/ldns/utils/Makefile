# $OpenBSD: Makefile,v 1.24 2012/01/20 09:53:31 sthen Exp $

COMMENT=	LDNS utilities

PKGNAME=	ldns-utils-${VERSION}

WANTLIB=	c crypto ldns>=4.10 pcap
LIB_DEPENDS+=	net/ldns/libldns>=1.6.12rc1

WRKSRC=		${WRKDIST}/examples

USE_GROFF=	Yes
USE_GMAKE=	Yes
CONFIGURE_ARGS+=--with-ldns=${LOCALBASE}
CONFIGURE_ENV+=	libtool=${LIBTOOL}

.include <bsd.port.mk>
