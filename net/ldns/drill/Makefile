# $OpenBSD: Makefile,v 1.17 2010/11/19 22:31:34 espie Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto ldns>=4.5
LIB_DEPENDS+=	net/ldns/libldns>=1.6.7

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
