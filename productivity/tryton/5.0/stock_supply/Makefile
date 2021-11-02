# $OpenBSD: Makefile,v 1.9 2021/11/02 00:02:00 sthen Exp $

MODPY_EGG_VERSION =	5.0.6
TRYTON_MODULE =		stock_supply
REVISION =		0

TRYTON_DEPENDS +=	account \
			party \
			product \
			purchase \
			purchase_request \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
