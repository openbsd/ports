# $OpenBSD: Makefile,v 1.2 2019/12/11 07:20:51 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		account_deposit

TRYTON_DEPENDS +=	account \
			account_invoice \
			company \
			party

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
