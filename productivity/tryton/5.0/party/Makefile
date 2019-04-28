# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:49 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		party
REVISION =		0

TRYTON_DEPENDS +=	country

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR} \
			devel/py-stdnum${MODPY_FLAVOR} \
			telephony/py-phonenumbers${MODPY_FLAVOR}

# optional dependency of devel/py-stdnum
RUN_DEPENDS +=		net/py-simplesoap${MODPY_FLAVOR}

.include <bsd.port.mk>
