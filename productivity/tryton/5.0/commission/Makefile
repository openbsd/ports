# $OpenBSD: Makefile,v 1.1.1.1 2018/12/19 08:16:43 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
TRYTON_MODULE =		commission

TRYTON_DEPENDS +=	account \
			account_invoice \
			account_product \
			party \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
