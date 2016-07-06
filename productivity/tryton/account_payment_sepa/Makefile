# $OpenBSD: Makefile,v 1.7 2016/07/06 08:53:15 ajacoutot Exp $

MODPY_EGG_VERSION =	3.2.5

TRYTOND_MODULE =	account_payment_sepa

RUN_DEPENDS =		productivity/tryton/account_payment \
			productivity/tryton/bank \
			productivity/tryton/company \
			productivity/tryton/party

RUN_DEPENDS +=		www/py-genshi

.include <bsd.port.mk>
