# $OpenBSD: Makefile,v 1.10 2009/08/14 15:00:44 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto
LIB_DEPENDS+=	ldns.>=4.0::net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
