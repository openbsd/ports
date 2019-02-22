# $OpenBSD: Makefile,v 1.2 2019/02/22 07:24:34 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		account_dunning

TRYTON_DEPENDS += 	account \
			company \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
