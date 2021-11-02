# $OpenBSD: Makefile,v 1.6 2021/11/02 00:01:57 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		commission
REVISION =		1

TRYTON_DEPENDS +=	account \
			account_invoice \
			account_product \
			party \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
