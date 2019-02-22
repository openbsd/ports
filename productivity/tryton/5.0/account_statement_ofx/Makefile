# $OpenBSD: Makefile,v 1.2 2019/02/22 07:24:35 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		account_statement_ofx

TRYTON_DEPENDS +=	account_statement \
			bank \
			party

RUN_DEPENDS +=		textproc/py-ofxparse${MODPY_FLAVOR}

.include <bsd.port.mk>
