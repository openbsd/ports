# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:47 sthen Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		account_asset
REVISION =		0

TRYTON_DEPENDS +=	account \
			account_product \
			product	\
			account_invoice

RUN_DEPENDS +=		devel/py-cached-property${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	purchase

.include <bsd.port.mk>
