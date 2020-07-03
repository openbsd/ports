# $OpenBSD: Makefile,v 1.4 2020/07/03 21:12:31 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		analytic_invoice
REVISION =		0

TRYTON_DEPENDS +=	account_invoice \
			analytic_account

TRYTON_TEST_DEPENDS +=	account_asset

.include <bsd.port.mk>
