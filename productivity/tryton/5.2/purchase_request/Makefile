# $OpenBSD: Makefile,v 1.4 2021/11/02 00:02:05 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		purchase_request
REVISION =		1

TRYTON_DEPENDS +=	purchase \
			product

TRYTON_TEST_DEPENDS +=	stock_supply

.include <bsd.port.mk>
