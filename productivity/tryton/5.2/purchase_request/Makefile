# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:33 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		purchase_request
REVISION =		0

TRYTON_DEPENDS +=	purchase \
			product

TRYTON_TEST_DEPENDS +=	stock_supply

.include <bsd.port.mk>
