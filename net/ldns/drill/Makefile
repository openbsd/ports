# $OpenBSD: Makefile,v 1.1 2008/02/03 19:08:30 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}p0

WANTLIB=	c ssl crypto
LIB_DEPENDS+=	ldns::net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
