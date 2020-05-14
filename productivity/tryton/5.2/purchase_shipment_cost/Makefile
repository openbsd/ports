# $OpenBSD: Makefile,v 1.3 2020/05/14 17:26:45 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		purchase_shipment_cost

TRYTON_DEPENDS +=	carrier \
			currency \
			stock

TEST_DEPENDS +=		devel/py-mock${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_stock_continental \
			account_stock_anglo_saxon \
			purchase

.include <bsd.port.mk>
