# $OpenBSD: Makefile,v 1.5 2020/04/10 15:22:43 semarie Exp $

MODPY_EGG_VERSION =	5.2.4
TRYTON_MODULE =		account_payment_clearing

TRYTON_DEPENDS +=	account_payment

TEST_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_statement \
			account_statement_rule

.include <bsd.port.mk>
