# $OpenBSD: Makefile,v 1.12 2009/12/04 13:14:07 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto
LIB_DEPENDS+=	ldns.>=4.2::net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
