# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:05 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		purchase_shipment_cost
REVISION =		1

TRYTON_DEPENDS +=	carrier \
			currency \
			stock

TEST_DEPENDS +=		devel/py-mock${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_stock_continental \
			account_stock_anglo_saxon \
			purchase

.include <bsd.port.mk>
