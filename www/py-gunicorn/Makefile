# $OpenBSD: Makefile,v 1.21 2019/04/24 20:14:08 sthen Exp $

COMMENT =		Python WSGI HTTP server

MODPY_EGG_VERSION =	19.9.0
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
TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}
.if ! ${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

.include <bsd.port.mk>
