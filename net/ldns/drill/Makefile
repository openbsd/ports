# $OpenBSD: Makefile,v 1.27 2014/01/22 00:15:36 brad Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto ldns>=6.1
LIB_DEPENDS+=	net/ldns/libldns>=1.6.17

WRKSRC=		${WRKDIST}/drill

USE_GMAKE=	Yes
CONFIGURE_ARGS+=--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
