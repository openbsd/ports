# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:30 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		account_fr
REVISION =		0

TRYTON_DEPENDS +=	account \
			party_siret

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
