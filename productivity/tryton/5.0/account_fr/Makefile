# $OpenBSD: Makefile,v 1.5 2020/04/10 15:21:10 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_fr

TRYTON_DEPENDS +=	account \
			party_siret

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
