# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:50 sthen Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		purchase_shipment_cost
REVISION =		0

TRYTON_DEPENDS +=	carrier \
			currency \
			stock

TEST_DEPENDS +=		devel/py-mock${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_stock_continental \
			account_stock_anglo_saxon \
			purchase

.include <bsd.port.mk>
