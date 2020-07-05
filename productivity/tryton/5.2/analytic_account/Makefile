# $OpenBSD: Makefile,v 1.4 2020/07/05 04:51:45 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		analytic_account

TRYTON_DEPENDS +=	account \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
