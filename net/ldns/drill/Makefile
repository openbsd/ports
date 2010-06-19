# $OpenBSD: Makefile,v 1.13 2010/06/19 21:18:11 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto
LIB_DEPENDS+=	ldns.>=4.4::net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
