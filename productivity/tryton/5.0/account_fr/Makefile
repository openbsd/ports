# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:25 sthen Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_fr
REVISION =		0

TRYTON_DEPENDS +=	account \
			party_siret

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
