# $OpenBSD: Makefile,v 1.5 2019/12/22 13:44:36 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		production_work

TRYTON_DEPENDS +=	company \
			production \
			production_routing \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
