# $OpenBSD: Makefile,v 1.6 2019/04/28 20:51:50 sthen Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		stock
REVISION =		0

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
