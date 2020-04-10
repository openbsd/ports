# $OpenBSD: Makefile,v 1.2 2020/04/10 15:22:43 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		account_fr

TRYTON_DEPENDS +=	account \
			party_siret

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
