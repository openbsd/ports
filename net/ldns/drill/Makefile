# $OpenBSD: Makefile,v 1.26 2013/01/08 10:17:14 sthen Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}
REVISION=	0

WANTLIB=	c crypto ldns>=5.0
LIB_DEPENDS+=	net/ldns/libldns>=1.6.16

WRKSRC=		${WRKDIST}/drill

USE_GMAKE=	Yes
CONFIGURE_ARGS+=--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
