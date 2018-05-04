# $OpenBSD: Makefile,v 1.20 2018/05/04 11:37:24 jasper Exp $

COMMENT =		Python WSGI HTTP server

MODPY_EGG_VERSION =	19.8.1
DISTNAME =		gunicorn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

HOMEPAGE =		http://gunicorn.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# py-aiohttp and py-multidict are python3 only
.if ${FLAVOR:Mpython3}
RUN_DEPENDS +=		www/py-aiohttp \
			www/py-multidict
.endif
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}
.if ! ${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

.include <bsd.port.mk>
