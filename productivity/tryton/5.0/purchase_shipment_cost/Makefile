# $OpenBSD: Makefile,v 1.4 2020/04/10 15:21:16 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		purchase_shipment_cost

TRYTON_DEPENDS +=	carrier \
			currency \
			stock

TEST_DEPENDS +=		devel/py-mock${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_stock_continental \
			account_stock_anglo_saxon \
			purchase

.include <bsd.port.mk>
