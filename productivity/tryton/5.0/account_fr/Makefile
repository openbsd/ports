# $OpenBSD: Makefile,v 1.2 2019/02/22 07:24:34 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		account_fr

TRYTON_DEPENDS +=	account \
			party_siret

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
