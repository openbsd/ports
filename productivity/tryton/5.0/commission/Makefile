# $OpenBSD: Makefile,v 1.2 2019/02/22 07:24:35 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		commission

TRYTON_DEPENDS +=	account \
			account_invoice \
			account_product \
			party \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
