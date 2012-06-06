# $OpenBSD: Makefile,v 1.23 2012/06/06 15:01:49 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto ldns>=4.11
LIB_DEPENDS+=	net/ldns/libldns>=1.6.13

WRKSRC=		${WRKDIST}/drill

USE_GMAKE=	Yes
CONFIGURE_ARGS+=--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
