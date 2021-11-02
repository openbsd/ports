# $OpenBSD: Makefile,v 1.4 2021/11/02 00:02:04 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		edocument_uncefact
REVISION =		1

TRYTON_DEPENDS +=	edocument_unece

RUN_DEPENDS +=		www/py-genshi${MODPY_FLAVOR} \
			devel/py-cached-property${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_invoice

TEST_DEPENDS +=		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
