# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:47 sthen Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		account_fr_chorus
REVISION =		0

TRYTON_DEPENDS +=	account \
			account_invoice \
			company \
			party \
			party_siret

RUN_DEPENDS +=		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
