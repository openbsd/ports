# $OpenBSD: Makefile,v 1.4 2015/03/15 09:10:05 ajacoutot Exp $

MODPY_EGG_VERSION =	3.2.3

TRYTOND_MODULE =	account_payment_sepa

RUN_DEPENDS =		productivity/tryton/account_payment \
			productivity/tryton/bank \
			productivity/tryton/company \
			productivity/tryton/party

RUN_DEPENDS +=		www/py-genshi

.include <bsd.port.mk>
