# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:48 sthen Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		commission
REVISION =		0

TRYTON_DEPENDS +=	account \
			account_invoice \
			account_product \
			party \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
