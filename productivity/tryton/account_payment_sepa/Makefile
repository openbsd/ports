# $OpenBSD: Makefile,v 1.5 2015/09/19 21:33:37 ajacoutot Exp $

MODPY_EGG_VERSION =	3.2.4

TRYTOND_MODULE =	account_payment_sepa

RUN_DEPENDS =		productivity/tryton/account_payment \
			productivity/tryton/bank \
			productivity/tryton/company \
			productivity/tryton/party

RUN_DEPENDS +=		www/py-genshi

.include <bsd.port.mk>
