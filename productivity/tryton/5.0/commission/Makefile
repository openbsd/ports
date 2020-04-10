# $OpenBSD: Makefile,v 1.4 2020/04/10 15:21:13 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		commission

TRYTON_DEPENDS +=	account \
			account_invoice \
			account_product \
			party \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
