# $OpenBSD: Makefile,v 1.4 2019/08/02 11:15:58 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		account_fr_chorus

TRYTON_DEPENDS +=	account \
			account_invoice \
			company \
			party \
			party_siret

RUN_DEPENDS +=		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
