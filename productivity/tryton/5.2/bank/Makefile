# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:55 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		bank

TRYTON_DEPENDS +=	party \
			currency

RUN_DEPENDS +=		devel/py-stdnum${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
