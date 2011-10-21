# $OpenBSD: Makefile,v 1.24 2011/10/21 10:58:29 jasper Exp $

BROKEN= 		Unable to connect to network due to tp-b or papyon bugs

COMMENT=		flexible communications framework, MSN component

DISTNAME=		telepathy-butterfly-0.5.15
REVISION=		1

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-butterfly/}

MODULES=		lang/python

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		ac_cv_prog_PYTHON="${MODPY_BIN}"

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		net/papyon>=0.5.1 \
			net/telepathy/telepathy-python>=0.15.17

USE_LIBTOOL=		No
NO_REGRESS=		Yes

.include <bsd.port.mk>
