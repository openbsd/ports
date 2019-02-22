# $OpenBSD: Makefile,v 1.2 2019/02/22 07:24:35 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		analytic_account

TRYTON_DEPENDS +=	account \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
