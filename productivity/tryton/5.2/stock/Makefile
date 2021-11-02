# $OpenBSD: Makefile,v 1.8 2021/11/02 00:02:06 sthen Exp $

MODPY_EGG_VERSION =	5.2.5
TRYTON_MODULE =		stock
REVISION =		0

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
