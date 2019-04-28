# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:50 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		purchase_request
REVISION =		0

TRYTON_DEPENDS +=	purchase \
			product

TRYTON_TEST_DEPENDS +=	stock_supply

.include <bsd.port.mk>
