# $OpenBSD: Makefile,v 1.6 2020/04/10 15:21:15 semarie Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		production_work

TRYTON_DEPENDS +=	company \
			production \
			production_routing \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
