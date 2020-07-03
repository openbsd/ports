# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:28 sthen Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		purchase_request
REVISION =		0

TRYTON_DEPENDS +=	purchase \
			product

TRYTON_TEST_DEPENDS +=	stock_supply

.include <bsd.port.mk>
