# $OpenBSD: Makefile,v 1.2 2019/07/18 07:49:58 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		production_work

TRYTON_DEPENDS +=	company \
			production \
			production_routing \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
