# $OpenBSD: Makefile,v 1.19 2011/01/17 00:15:35 jasper Exp $

COMMENT=		flexible communications framework, MSN component

DISTNAME=		telepathy-butterfly-0.5.15

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-butterfly/}

MODULES=		lang/python

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		net/papyon>=0.5.1 \
			net/telepathy/telepathy-python>=0.15.17

USE_LIBTOOL=		No
NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
