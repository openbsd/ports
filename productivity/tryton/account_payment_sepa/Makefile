# $OpenBSD: Makefile,v 1.3 2014/08/30 12:48:09 ajacoutot Exp $

MODPY_EGG_VERSION =	3.2.2

TRYTOND_MODULE =	account_payment_sepa

RUN_DEPENDS =		productivity/tryton/account_payment \
			productivity/tryton/bank \
			productivity/tryton/company \
			productivity/tryton/party

RUN_DEPENDS +=		www/py-genshi

.include <bsd.port.mk>
