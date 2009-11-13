# $OpenBSD: Makefile,v 1.11 2009/11/13 03:46:47 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto
LIB_DEPENDS+=	ldns.>=4.1::net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
