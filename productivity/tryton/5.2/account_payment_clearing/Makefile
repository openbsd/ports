# $OpenBSD: Makefile,v 1.3 2019/07/18 07:49:58 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account_payment_clearing

TRYTON_DEPENDS +=	account_payment

TEST_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_statement \
			account_statement_rule

.include <bsd.port.mk>
