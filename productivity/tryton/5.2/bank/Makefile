# $OpenBSD: Makefile,v 1.2 2020/04/10 15:22:45 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		bank

TRYTON_DEPENDS +=	party \
			currency

RUN_DEPENDS +=		devel/py-stdnum${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
