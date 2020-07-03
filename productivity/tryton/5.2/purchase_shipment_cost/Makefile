# $OpenBSD: Makefile,v 1.4 2020/07/03 21:12:33 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
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
