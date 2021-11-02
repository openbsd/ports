# $OpenBSD: Makefile,v 1.7 2021/11/02 00:01:56 sthen Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_fr_chorus
REVISION =		1

TRYTON_DEPENDS +=	account \
			account_invoice \
			company \
			party \
			party_siret

RUN_DEPENDS +=		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
