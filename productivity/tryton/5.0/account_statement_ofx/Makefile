# $OpenBSD: Makefile,v 1.8 2021/11/02 00:01:57 sthen Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		account_statement_ofx
REVISION =		0

TRYTON_DEPENDS +=	account_statement \
			bank \
			party

RUN_DEPENDS +=		textproc/py-ofxparse${MODPY_FLAVOR}

.include <bsd.port.mk>
