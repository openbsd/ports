# $OpenBSD: Makefile,v 1.5 2020/04/10 15:21:11 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_fr_chorus

TRYTON_DEPENDS +=	account \
			account_invoice \
			company \
			party \
			party_siret

RUN_DEPENDS +=		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
