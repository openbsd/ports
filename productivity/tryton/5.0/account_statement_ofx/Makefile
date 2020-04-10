# $OpenBSD: Makefile,v 1.5 2020/04/10 15:21:11 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_statement_ofx

TRYTON_DEPENDS +=	account_statement \
			bank \
			party

RUN_DEPENDS +=		textproc/py-ofxparse${MODPY_FLAVOR}

.include <bsd.port.mk>
