# $OpenBSD: Makefile,v 1.2 2020/04/10 15:22:41 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		account_dunning

TRYTON_DEPENDS += 	account \
			company \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
