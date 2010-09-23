# $OpenBSD: Makefile,v 1.17 2010/09/23 14:24:22 jasper Exp $

COMMENT=		flexible communications framework, MSN component

DISTNAME=		telepathy-butterfly-0.5.14

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-butterfly/}

MODULES=		lang/python

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:papyon->=0.5.1:net/papyon \
			:telepathy-python->=0.15.17:net/telepathy/telepathy-python

USE_LIBTOOL=		No
NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
