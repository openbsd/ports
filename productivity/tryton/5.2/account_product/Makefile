# $OpenBSD: Makefile,v 1.3 2020/04/10 15:22:44 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account_product

TRYTON_DEPENDS +=	account \
			company \
			product

TRYTON_TEST_DEPENDS +=	analytic_account

.include <bsd.port.mk>
