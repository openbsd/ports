# $OpenBSD: Makefile,v 1.5 2020/04/10 15:21:10 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_deposit

TRYTON_DEPENDS +=	account \
			account_invoice \
			company \
			party

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
