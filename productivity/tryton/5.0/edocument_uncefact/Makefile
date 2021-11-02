# $OpenBSD: Makefile,v 1.7 2021/11/02 00:01:58 sthen Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		edocument_uncefact
REVISION =		1

TRYTON_DEPENDS +=	edocument_unece

RUN_DEPENDS +=		www/py-genshi${MODPY_FLAVOR} \
			devel/py-cached-property${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_invoice

TEST_DEPENDS +=		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
