# $OpenBSD: Makefile,v 1.7 2021/11/02 00:01:58 sthen Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		party
REVISION =		1

TRYTON_DEPENDS +=	country

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR} \
			devel/py-stdnum${MODPY_FLAVOR} \
			telephony/py-phonenumbers${MODPY_FLAVOR}

# optional dependency of devel/py-stdnum
RUN_DEPENDS +=		net/py-simplesoap${MODPY_FLAVOR}

.include <bsd.port.mk>
