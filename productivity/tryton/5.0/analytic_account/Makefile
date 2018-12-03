# $OpenBSD: Makefile,v 1.1.1.1 2018/12/03 12:28:19 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
TRYTON_MODULE =		analytic_account

TRYTON_DEPENDS +=	account \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
