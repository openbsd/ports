# $OpenBSD: Makefile,v 1.15 2010/10/18 18:36:49 espie Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto ldns.>=4.4
LIB_DEPENDS+=	:libldns->=1.6.6:net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
