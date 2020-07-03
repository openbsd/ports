# $OpenBSD: Makefile,v 1.4 2020/07/03 21:12:29 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
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
