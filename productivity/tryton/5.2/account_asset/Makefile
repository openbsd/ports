# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:51 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		account_asset

TRYTON_DEPENDS +=	account \
			account_product \
			product	\
			account_invoice

RUN_DEPENDS +=		devel/py-cached-property${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	purchase

.include <bsd.port.mk>
