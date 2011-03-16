# $OpenBSD: Makefile,v 1.19 2011/03/16 20:43:07 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto ldns>=4.7
LIB_DEPENDS+=	net/ldns/libldns>=1.6.9

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
