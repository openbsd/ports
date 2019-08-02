# $OpenBSD: Makefile,v 1.2 2019/08/02 11:18:44 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		account_fr_chorus

TRYTON_DEPENDS +=	account \
			account_invoice \
			company \
			party \
			party_siret

RUN_DEPENDS +=		www/py-requests${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	edocument_uncefact

.include <bsd.port.mk>
