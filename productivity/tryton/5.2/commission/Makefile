# $OpenBSD: Makefile,v 1.2 2020/04/10 15:22:46 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		commission

TRYTON_DEPENDS +=	account \
			account_invoice \
			account_product \
			party \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	sale

.include <bsd.port.mk>
