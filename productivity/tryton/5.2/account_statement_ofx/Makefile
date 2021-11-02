# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:02 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account_statement_ofx
REVISION =		1

TRYTON_DEPENDS +=	account_statement \
			bank \
			party

RUN_DEPENDS +=		textproc/py-ofxparse${MODPY_FLAVOR}

.include <bsd.port.mk>
