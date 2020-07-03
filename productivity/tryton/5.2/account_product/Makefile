# $OpenBSD: Makefile,v 1.4 2020/07/03 21:12:30 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account_product
REVISION =		0

TRYTON_DEPENDS +=	account \
			company \
			product

TRYTON_TEST_DEPENDS +=	analytic_account

.include <bsd.port.mk>
