# $OpenBSD: Makefile,v 1.2 2019/07/02 10:21:27 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		account_payment_clearing

TRYTON_DEPENDS +=	account_payment

TEST_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_statement \
			account_statement_rule

.include <bsd.port.mk>
