# $OpenBSD: Makefile,v 1.9 2020/03/02 07:23:33 semarie Exp $

MODPY_EGG_VERSION =	5.0.7
TRYTON_MODULE =		account_invoice

TRYTON_DEPENDS +=	account \
			account_product \
			company \
			party \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
