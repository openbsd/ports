# $OpenBSD: Makefile,v 1.4 2020/04/10 15:21:10 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_dunning

TRYTON_DEPENDS += 	account \
			company \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
