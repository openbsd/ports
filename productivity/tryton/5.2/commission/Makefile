# $OpenBSD: Makefile,v 1.4 2021/11/02 00:02:03 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		commission
REVISION =		1

TRYTON_DEPENDS +=	account \
			account_invoice \
			account_product \
			party \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	sale

.include <bsd.port.mk>
