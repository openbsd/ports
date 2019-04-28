# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:51 sthen Exp $

MODPY_EGG_VERSION =	5.0.3
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
