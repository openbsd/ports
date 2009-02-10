# $OpenBSD: Makefile,v 1.8 2009/02/10 19:24:43 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto
LIB_DEPENDS+=	ldns.>=2.2::net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
