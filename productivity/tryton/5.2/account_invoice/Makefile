# $OpenBSD: Makefile,v 1.3 2019/08/17 17:24:32 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account_invoice

TRYTON_DEPENDS +=	account \
			account_product \
			company \
			party \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
