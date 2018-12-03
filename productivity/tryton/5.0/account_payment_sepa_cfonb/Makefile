# $OpenBSD: Makefile,v 1.1.1.1 2018/12/03 12:28:21 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
TRYTON_MODULE =		account_payment_sepa_cfonb

TRYTON_DEPENDS +=	account_payment \
			account_payment_sepa \
			company \
			bank \
			party

RUN_DEPENDS +=		www/py-genshi${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

TEST_DEPENDS +=		devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
