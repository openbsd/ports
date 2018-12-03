# $OpenBSD: Makefile,v 1.1.1.1 2018/12/03 12:28:19 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
TRYTON_MODULE =		account_statement_ofx

TRYTON_DEPENDS +=	account_statement \
			bank \
			party

RUN_DEPENDS +=		textproc/py-ofxparse${MODPY_FLAVOR}

.include <bsd.port.mk>
