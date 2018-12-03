# $OpenBSD: Makefile,v 1.1.1.1 2018/12/03 12:28:19 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
TRYTON_MODULE =		account_fr_chorus

TRYTON_DEPENDS +=	account \
			account_invoice \
			company \
			party \
			party_siret

RUN_DEPENDS +=		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
