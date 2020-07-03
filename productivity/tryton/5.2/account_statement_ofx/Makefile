# $OpenBSD: Makefile,v 1.4 2020/07/03 21:12:30 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account_statement_ofx
REVISION =		0

TRYTON_DEPENDS +=	account_statement \
			bank \
			party

RUN_DEPENDS +=		textproc/py-ofxparse${MODPY_FLAVOR}

.include <bsd.port.mk>
