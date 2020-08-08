# $OpenBSD: Makefile,v 1.8 2020/08/08 04:40:56 semarie Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		production_work

TRYTON_DEPENDS +=	company \
			production \
			production_routing \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
