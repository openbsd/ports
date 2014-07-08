# $OpenBSD: Makefile,v 1.2 2014/07/08 20:12:04 ajacoutot Exp $

MODPY_EGG_VERSION =	3.2.1

TRYTOND_MODULE =	account_payment_sepa

RUN_DEPENDS =		productivity/tryton/account_payment \
			productivity/tryton/bank \
			productivity/tryton/company \
			productivity/tryton/party

RUN_DEPENDS +=		www/py-genshi

.include <bsd.port.mk>
