# $OpenBSD: Makefile,v 1.14 2010/08/22 08:56:51 jakob Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto ldns.>=4.4
LIB_DEPENDS+=	:libldns->=1.6.6:net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}

.include <bsd.port.mk>
