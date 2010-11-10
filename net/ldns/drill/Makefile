# $OpenBSD: Makefile,v 1.16 2010/11/10 08:28:33 sthen Exp $

COMMENT=	DNS debugger

PKGNAME=	drill-${VERSION}

WANTLIB=	c crypto ldns.>=4.5
LIB_DEPENDS+=	:libldns->=1.6.7:net/ldns/libldns

WRKSRC=		${WRKDIST}/drill

CONFIGURE_ARGS+=	--with-ldns=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>
