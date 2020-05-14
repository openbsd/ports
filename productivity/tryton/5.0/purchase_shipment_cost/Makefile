# $OpenBSD: Makefile,v 1.5 2020/05/14 17:25:15 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		purchase_shipment_cost

TRYTON_DEPENDS +=	carrier \
			currency \
			stock

TEST_DEPENDS +=		devel/py-mock${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_stock_continental \
			account_stock_anglo_saxon \
			purchase

.include <bsd.port.mk>
