# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:53 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		account_payment_clearing

TRYTON_DEPENDS +=	account_payment

TEST_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_statement \
			account_statement_rule

.include <bsd.port.mk>
