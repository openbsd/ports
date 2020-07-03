# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:30 sthen Exp $

MODPY_EGG_VERSION =	5.2.4
TRYTON_MODULE =		account_payment_clearing
REVISION =		0

TRYTON_DEPENDS +=	account_payment

TEST_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_statement \
			account_statement_rule

.include <bsd.port.mk>
