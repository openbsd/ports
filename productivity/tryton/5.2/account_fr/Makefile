# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:52 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		account_fr

TRYTON_DEPENDS +=	account \
			party_siret

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
