# $OpenBSD: Makefile,v 1.1.1.1 2014/04/29 11:08:15 ajacoutot Exp $

TRYTOND_MODULE =	account_payment_sepa

RUN_DEPENDS =		productivity/tryton/account_payment \
			productivity/tryton/bank \
			productivity/tryton/company \
			productivity/tryton/party

RUN_DEPENDS +=		www/py-genshi

.include <bsd.port.mk>
