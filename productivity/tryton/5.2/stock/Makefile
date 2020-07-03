# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:33 sthen Exp $

MODPY_EGG_VERSION =	5.2.4
TRYTON_MODULE =		stock
REVISION =		0

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
