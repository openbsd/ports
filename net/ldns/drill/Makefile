# $OpenBSD: Makefile,v 1.25 2012/11/23 04:26:09 brad Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto ldns>=5.0
LIB_DEPENDS+=	net/ldns/libldns>=1.6.16

WRKSRC=		${WRKDIST}/drill

USE_GMAKE=	Yes
CONFIGURE_ARGS+=--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
