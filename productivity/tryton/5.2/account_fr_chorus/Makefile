# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:02 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account_fr_chorus
REVISION =		1

TRYTON_DEPENDS +=	account \
			account_invoice \
			company \
			party \
			party_siret

RUN_DEPENDS +=		www/py-requests${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	edocument_uncefact

.include <bsd.port.mk>
