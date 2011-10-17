# $OpenBSD: Makefile,v 1.21 2011/10/17 19:41:23 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto ldns>=4.9
LIB_DEPENDS+=	net/ldns/libldns>=1.6.11

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF=	Yes

.include <bsd.port.mk>
