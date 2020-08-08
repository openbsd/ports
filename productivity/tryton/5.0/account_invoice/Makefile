# $OpenBSD: Makefile,v 1.12 2020/08/08 04:40:56 semarie Exp $

MODPY_EGG_VERSION =	5.0.9
TRYTON_MODULE =		account_invoice

TRYTON_DEPENDS +=	account \
			account_product \
			company \
			party \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
