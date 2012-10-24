# $OpenBSD: Makefile,v 1.24 2012/10/24 23:49:08 brad Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto ldns>=5.0
LIB_DEPENDS+=	net/ldns/libldns>=1.6.14

WRKSRC=		${WRKDIST}/drill

USE_GMAKE=	Yes
CONFIGURE_ARGS+=--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
