# $OpenBSD: Makefile,v 1.18 2010/11/19 22:31:38 espie Exp $

COMMENT=		flexible communications framework, MSN component

DISTNAME=		telepathy-butterfly-0.5.14

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
