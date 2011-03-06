# $OpenBSD: Makefile,v 1.18 2011/03/06 09:06:33 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto ldns>=4.6
LIB_DEPENDS+=	net/ldns/libldns>=1.6.8

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
