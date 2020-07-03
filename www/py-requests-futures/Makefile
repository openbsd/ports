# $OpenBSD: Makefile,v 1.4 2020/07/03 21:13:20 sthen Exp $

COMMENT =		small addon for python-requests HTTP library

MODPY_EGG_VERSION =	0.9.7
DISTNAME =		requests-futures-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		https://github.com/ross/requests-futures

# APLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS +=		www/py-requests${MODPY_FLAVOR}

.if ! ${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-futures${MODPY_FLAVOR}
.endif

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_requests_futures.py


.include <bsd.port.mk>
