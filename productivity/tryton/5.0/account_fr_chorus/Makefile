# $OpenBSD: Makefile,v 1.2 2019/02/22 07:24:34 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		account_fr_chorus

TRYTON_DEPENDS +=	account \
			account_invoice \
			company \
			party \
			party_siret

RUN_DEPENDS +=		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
