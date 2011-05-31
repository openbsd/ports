# $OpenBSD: Makefile,v 1.20 2011/05/31 17:40:49 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto ldns>=4.8
LIB_DEPENDS+=	net/ldns/libldns>=1.6.10

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
