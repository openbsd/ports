# $OpenBSD: Makefile,v 1.4 2020/03/02 07:23:33 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		account_statement_ofx

TRYTON_DEPENDS +=	account_statement \
			bank \
			party

RUN_DEPENDS +=		textproc/py-ofxparse${MODPY_FLAVOR}

.include <bsd.port.mk>
