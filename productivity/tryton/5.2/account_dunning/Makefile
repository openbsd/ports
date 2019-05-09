# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:51 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		account_dunning

TRYTON_DEPENDS += 	account \
			company \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
