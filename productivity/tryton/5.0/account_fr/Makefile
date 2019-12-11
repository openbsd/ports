# $OpenBSD: Makefile,v 1.4 2019/12/11 07:19:53 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		account_fr

TRYTON_DEPENDS +=	account \
			party_siret

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
