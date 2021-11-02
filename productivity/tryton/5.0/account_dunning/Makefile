# $OpenBSD: Makefile,v 1.6 2021/11/02 00:01:55 sthen Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_dunning
REVISION =		1

TRYTON_DEPENDS += 	account \
			company \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
