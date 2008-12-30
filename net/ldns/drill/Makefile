# $OpenBSD: Makefile,v 1.7 2008/12/30 07:42:51 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}p0

WANTLIB=	c crypto
LIB_DEPENDS+=	ldns.>=2.1::net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
