# $OpenBSD: Makefile,v 1.2 2018/12/03 12:51:22 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		account_payment_sepa

TRYTON_DEPENDS +=	account_payment \
			company \
			bank \
			party

RUN_DEPENDS +=		www/py-genshi${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-stdnum${MODPY_FLAVOR}

.include <bsd.port.mk>
