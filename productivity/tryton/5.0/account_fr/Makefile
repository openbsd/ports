# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:47 sthen Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		account_fr
REVISION =		0

TRYTON_DEPENDS +=	account \
			party_siret

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
