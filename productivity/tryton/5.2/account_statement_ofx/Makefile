# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:53 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		account_statement_ofx

TRYTON_DEPENDS +=	account_statement \
			bank \
			party

RUN_DEPENDS +=		textproc/py-ofxparse${MODPY_FLAVOR}

.include <bsd.port.mk>
