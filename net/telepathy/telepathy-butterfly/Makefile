# $OpenBSD: Makefile,v 1.11 2010/04/23 12:40:56 jasper Exp $

COMMENT=		flexible communications framework, MSN component

DISTNAME=		telepathy-butterfly-0.5.8

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-butterfly/}

MODULES=		lang/python

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::net/papyon \
			:telepathy-python->=0.15.17:net/telepathy/telepathy-python

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
