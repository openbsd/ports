# $OpenBSD: Makefile,v 1.1.1.1 2018/12/03 12:28:17 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
TRYTON_MODULE =		account_fr

TRYTON_DEPENDS +=	account \
			party_siret

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
