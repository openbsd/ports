# $OpenBSD: Makefile,v 1.4 2019/12/11 07:20:52 semarie Exp $

MODPY_EGG_VERSION =	5.2.3
TRYTON_MODULE =		account_invoice

TRYTON_DEPENDS +=	account \
			account_product \
			company \
			party \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
