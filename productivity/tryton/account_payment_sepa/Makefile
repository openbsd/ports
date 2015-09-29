# $OpenBSD: Makefile,v 1.6 2015/09/29 10:52:30 sthen Exp $

MODPY_EGG_VERSION =	3.2.4

TRYTOND_MODULE =	account_payment_sepa
REVISION =		0

RUN_DEPENDS =		productivity/tryton/account_payment \
			productivity/tryton/bank \
			productivity/tryton/company \
			productivity/tryton/party

RUN_DEPENDS +=		www/py-genshi

.include <bsd.port.mk>
