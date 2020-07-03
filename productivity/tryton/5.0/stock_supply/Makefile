# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:29 sthen Exp $

MODPY_EGG_VERSION =	5.0.5
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
