# $OpenBSD: Makefile,v 1.28 2019/07/17 14:46:33 danj Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}
REVISION=	0

WANTLIB=	c crypto ldns>=6.1
LIB_DEPENDS+=	net/ldns/libldns>=1.6.17

WRKSRC=		${WRKDIST}/drill

USE_GMAKE=	Yes
CONFIGURE_ARGS+=--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
